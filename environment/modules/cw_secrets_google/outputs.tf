output "google_client_id_arn" {
  value = aws_secretsmanager_secret_version.google_client_id.arn
}

output "google_client_secret_arn" {
  value = aws_secretsmanager_secret_version.google_client_secret.arn
}