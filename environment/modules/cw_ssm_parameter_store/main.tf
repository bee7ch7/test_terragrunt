# resource "aws_ssm_parameter" "main_db_reader_endpoint" {
#   name        = "/${var.environment}/${var.param_name}/main_db_reader_endpoint"
#   description = "Main database endpoint"
#   type        = "SecureString"
#   value       = var.main_db_reader_endpoint
# }

# resource "aws_ssm_parameter" "main_db_endpoint" {
#   name        = "/${var.environment}/${var.param_name}/main_db_endpoint"
#   description = "Main database endpoint"
#   type        = "SecureString"
#   value       = var.main_db_endpoint
# }

# resource "aws_ssm_parameter" "main_db_port" {
#   name        = "/${var.environment}/${var.param_name}/main_db_port"
#   description = "Main database port"
#   type        = "SecureString"
#   value       = var.main_db_port
# }

# resource "aws_ssm_parameter" "main_db_name" {
#   name        = "/${var.environment}/${var.param_name}/main_db_name"
#   description = "Main database name"
#   type        = "SecureString"
#   value       = var.main_db_name

# }

# resource "aws_ssm_parameter" "main_db_user" {
#   name        = "/${var.environment}/${var.param_name}/main_db_user"
#   description = "Main database user"
#   type        = "SecureString"
#   value       = var.main_db_user

# }

resource "aws_ssm_parameter" "google_client_id" {
  name        = "/${var.environment}/${var.google_params}/google_client_id"
  description = "Main database name"
  type        = "SecureString"
  value       = var.google_client_id

}

resource "aws_ssm_parameter" "google_client_secret" {
  name        = "/${var.environment}/${var.google_params}/google_client_secret"
  description = "Main database user"
  type        = "SecureString"
  value       = var.google_client_secret

}

resource "aws_ssm_parameter" "new_relic_key" {
  name        = "/${var.environment}/${var.monitoring}/nr_license_key"
  description = "Main database user"
  type        = "SecureString"
  value       = var.nr_license_key

}
