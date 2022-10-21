locals {
  generate_password = var.random_password == true ? true : false
}


resource "random_password" "db_password" {
  count            = local.generate_password ? 1 : 0
  length           = 16
  numeric          = true
  upper            = true
  lower            = true
  special          = true
  override_special = "!#$&*()-_=+[]{}<>:?"
}

resource "aws_secretsmanager_secret" "this" {

  for_each = var.secrets

  name = "${var.environment}/${each.value.secret_for}/${each.value.secret_name}"

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name        = "${each.value.secret_name}-${var.environment}",
    Environment = var.environment
  }

}

resource "aws_secretsmanager_secret_version" "this" {
  for_each      = var.secrets
  secret_id     = aws_secretsmanager_secret.this["${each.value.secret_name}"].id
  secret_string = var.secret_value

}

