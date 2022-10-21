output "db_password_secret_arn" {
  value = aws_secretsmanager_secret_version.db_password.arn
}

# output "main_db_connection_string_arn" {
#   value = aws_secretsmanager_secret_version.main_db_connection_string.arn
# }

output "db_password_secret_string" {
  value     = aws_secretsmanager_secret_version.db_password.secret_string
  sensitive = true
}

# output "main_db_connection_string" {
#   value     = aws_secretsmanager_secret_version.main_db_connection_string.secret_string
#   sensitive = true
# }