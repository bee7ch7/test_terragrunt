# output "main_db_endpoint" {
#   value = aws_ssm_parameter.main_db_endpoint.arn
# }

# output "main_db_reader_endpoint" {
#   value = aws_ssm_parameter.main_db_endpoint.arn
# }

# output "main_db_port" {
#   value = aws_ssm_parameter.main_db_port.arn
# }

# output "main_db_name" {
#   value = aws_ssm_parameter.main_db_name.arn
# }

# output "main_db_user" {
#   value = aws_ssm_parameter.main_db_user.arn
# }

output "google_client_id" {
  value = aws_ssm_parameter.google_client_id.arn
}

output "google_client_secret" {
  value = aws_ssm_parameter.google_client_secret.arn
}

output "new_relic_key" {
  value = aws_ssm_parameter.new_relic_key.arn
}

