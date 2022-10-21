resource "aws_iam_role" "ecs_codedeploy" {
  name        = "${var.name}-ecsCodeDeploy"
  description = "For deployment to ECS"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = ""
        Effect = "Allow"
        Principal = {
          Service = "codedeploy.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "s3_single_bucket_policy" {
  name        = "${var.name}-S3AppspecBucket"
  path        = "/"
  description = "Policy for appspec"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:GetBucketLocation",
          "s3:ListAllMyBuckets"
        ]
        Effect   = "Allow"
        Resource = "arn:aws:s3:::*"
      },
      {
        Action = [
          "s3:*"
        ]
        Effect = "Allow"
        Resource = [
          var.s3_environment_folder,
          var.s3_environment_bucket
        ]
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ecs-codedeploy-role-policy-attachment" {
  role       = aws_iam_role.ecs_codedeploy.name
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeDeployRoleForECS"
}

resource "aws_iam_role_policy_attachment" "ecs-s3-role-policy-attachment" {
  role       = aws_iam_role.ecs_codedeploy.name
  policy_arn = aws_iam_policy.s3_single_bucket_policy.arn
}

