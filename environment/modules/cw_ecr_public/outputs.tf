output "aws_ecr_repository_id" {
  value = aws_ecrpublic_repository.this.registry_id
}

output "aws_ecr_repository_name" {
  value = aws_ecrpublic_repository.this.repository_name
}

output "aws_ecr_repository_uri" {
  value = aws_ecrpublic_repository.this.repository_uri
}