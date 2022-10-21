resource "aws_iam_role" "ecs_task_execution_role" {
  name        = "${var.name}-ecsTaskExecutionRole"
  description = "For task execution to get secrets"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = ""
        Effect = "Allow"
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role" "ecs_task_role" {
  name = "${var.name}-ecsTaskRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = ""
        Effect = "Allow"
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "db_secrets" {
  name        = "${var.name}-db-secrets"
  description = "Allow access to get secrets from Secrets Manager."

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "secretsmanager:GetSecretValue",
          "ssm:GetParameters"
        ]
        Effect   = "Allow"
        Resource = var.db_secrets
      }
    ]
  })
}

resource "aws_iam_policy" "sqs_ecs_policy" {
  name        = "${var.name}-sqs-queue1"
  description = "Allow access from ECS to SQS queue"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sqs:*",
        ]
        Effect   = "Allow"
        Resource = "${var.main_sqs_queue}*"
      },
    ]
  })
}

resource "aws_iam_policy" "s3_environment_file" {
  name        = "${var.name}-s3_environment_file"
  description = "Allow access from ECS to S3 to get environment file"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Resource = "${var.s3_environment_folder}"
        Action = [
          "s3:GetObject"
        ]
      },
      {
        Effect   = "Allow"
        Resource = "${var.s3_environment_bucket}"
        Action = [
          "s3:GetBucketLocation"
        ]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ecs-task-execution-role-policy-attachment" {
  role       = aws_iam_role.ecs_task_execution_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

resource "aws_iam_role_policy_attachment" "db-secrets-attachment" {
  role       = aws_iam_role.ecs_task_execution_role.name
  policy_arn = aws_iam_policy.db_secrets.arn
}

resource "aws_iam_role_policy_attachment" "sqs-attachment" {
  role       = aws_iam_role.ecs_task_execution_role.name
  policy_arn = aws_iam_policy.sqs_ecs_policy.arn
}

resource "aws_iam_role_policy_attachment" "s3-envfiles-attachment" {
  role       = aws_iam_role.ecs_task_execution_role.name
  policy_arn = aws_iam_policy.s3_environment_file.arn
}

