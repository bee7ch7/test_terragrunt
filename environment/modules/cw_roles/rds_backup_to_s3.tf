resource "aws_iam_role" "rds_s3_backup" {
  name        = "${var.name}-RDSToS3Backup"
  description = "RDSToS3Backup"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = ""
        Effect = "Allow"
        Principal = {
          Service = "rds.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "rds_s3_backup_policy" {
  name        = "${var.name}-RDSToS3BackupPolicy"
  path        = "/"
  description = "RDSToS3BackupPolicy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid      = ""
        Action   = "s3:*"
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "rds-backup-attachment" {
  role       = aws_iam_role.rds_s3_backup.name
  policy_arn = aws_iam_policy.rds_s3_backup_policy.arn
}
