### client_id
resource "aws_secretsmanager_secret" "google_client_id" {
  name = "${var.environment}/${var.secret_for}/${var.secret_name_client_id}"

  tags = {
    Name        = "${var.secret_name_client_id}-${var.environment}",
    Environment = var.environment
  }
}

resource "aws_secretsmanager_secret_version" "google_client_id" {
  secret_id     = aws_secretsmanager_secret.google_client_id.id
  secret_string = var.google_client_id

}

### client_secret
resource "aws_secretsmanager_secret" "google_client_secret" {
  name = "${var.environment}/${var.secret_for}/${var.secret_name_client_secret}"

  tags = {
    Name        = "${var.secret_name_client_secret}-${var.environment}",
    Environment = var.environment
  }
}

resource "aws_secretsmanager_secret_version" "google_client_secret" {
  secret_id     = aws_secretsmanager_secret.google_client_secret.id
  secret_string = var.google_client_secret
}

