resource "random_password" "db_password" {
  length           = 16
  numeric          = true
  upper            = true
  lower            = true
  special          = true
  override_special = "!#$&*()-_=+[]{}<>:?"
}

### secret db password
resource "aws_secretsmanager_secret" "db_password" {
  name        = "${var.environment}/${var.secret_password_name}/db_password"
  description = "Aurora DB Password"
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name        = "${var.secret_password_name}-secret-${var.environment}",
    Environment = var.environment
  }
}

resource "aws_secretsmanager_secret_version" "db_password" {
  secret_id     = aws_secretsmanager_secret.db_password.id
  secret_string = random_password.db_password.result
}
