output "secrets_arn" {
  value = { for k, v in aws_secretsmanager_secret_version.this : k => v.arn }
}