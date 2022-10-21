terraform {
  required_version = ">= 0.14, < 2.0"
}

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}
data "aws_region" "current" {}

locals {
  aws_account_id = data.aws_caller_identity.current.account_id
  aws_partition  = data.aws_partition.current.partition
  aws_region     = data.aws_region.current.name
  archive_name   = var.lambda_archive
  archive_folder = dirname(local.archive_name)
  tags = merge(
    var.tags,
    { "lambda:createdBy" = "Terraform" }
  )
}

data "aws_iam_policy_document" "lambda_assume_policy" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "lambda_role" {
  count = var.function_role == null ? 1 : 0

  name                 = var.service_name
  assume_role_policy   = data.aws_iam_policy_document.lambda_assume_policy.json
  permissions_boundary = var.permissions_boundary

  tags = local.tags
}

resource "aws_iam_role_policy_attachment" "lambda_log_policy" {
  count = var.function_role == null ? 1 : 0

  role       = aws_iam_role.lambda_role.0.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_cloudwatch_log_group" "lambda_logs" {
  name              = "/aws/lambda/${var.service_name}"
  retention_in_days = var.lambda_log_retention_in_days

  tags = local.tags
}

resource "null_resource" "build_lambda" {
  count = var.build_lambda ? 1 : 0
  // Depends on log group, just in case this is created in a brand new AWS Subaccount, and it doesn't have subscriptions yet.
  depends_on = [aws_cloudwatch_log_group.lambda_logs]

  provisioner "local-exec" {
    // OS Agnostic folder creation.
    command = (local.archive_folder != "."
      ? "mkdir ${local.archive_folder} || mkdir -p ${local.archive_folder}"
      : "echo Folder Exists"
    )
    on_failure = continue
  }

  provisioner "local-exec" {
    command     = "docker build -t ${var.lambda_image_name} --network host ."
    working_dir = path.module
  }

  provisioner "local-exec" {
    command     = "docker run --rm --entrypoint cat ${var.lambda_image_name} /out.zip > ${abspath(local.archive_name)}"
    working_dir = path.module
  }

  provisioner "local-exec" {
    command    = "docker image rm ${var.lambda_image_name}"
    on_failure = continue
  }
}

resource "aws_lambda_function" "ingestion_function" {
  depends_on = [
    aws_iam_role.lambda_role,
    aws_cloudwatch_log_group.lambda_logs,
    null_resource.build_lambda,
  ]

  function_name = "${var.service_name}-${var.environment}"
  description   = "Sends log data from CloudWatch Logs to New Relic Infrastructure (Cloud integrations) and New Relic Logging"
  role = (var.function_role != null
    ? var.function_role
    : aws_iam_role.lambda_role.0.arn
  )
  runtime     = "python3.9"
  filename    = local.archive_name
  handler     = "function.lambda_handler"
  memory_size = var.memory_size
  timeout     = var.timeout

  environment {
    variables = {
      LICENSE_KEY     = var.nr_license_key
      LOGGING_ENABLED = var.nr_logging_enabled ? "True" : "False"
      INFRA_ENABLED   = var.nr_infra_logging ? "True" : "False"
      NR_TAGS         = var.nr_tags
    }
  }

  tags = local.tags
}

resource "aws_lambda_permission" "log_invoke_permission" {
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.ingestion_function.function_name
  principal     = "logs.${local.aws_region}.amazonaws.com"
  source_arn    = "arn:${local.aws_partition}:logs:${local.aws_region}:${local.aws_account_id}:log-group:*"
}

##### trigger 

resource "aws_cloudwatch_log_subscription_filter" "lambda-subscription" {
  name            = "new-relic-logs-lambda-subscription"
  log_group_name  = var.log_group_name
  filter_pattern  = var.filter_pattern
  destination_arn = aws_lambda_function.ingestion_function.arn
}