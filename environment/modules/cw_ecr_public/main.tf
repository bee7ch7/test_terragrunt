resource "aws_ecrpublic_repository" "this" {

  repository_name = "${var.name}-${var.environment}"

  tags = {
    Name        = "${var.name}-registry-${var.environment}",
    Environment = var.environment
  }
}

resource "aws_ecr_lifecycle_policy" "this" {
  repository = aws_ecrpublic_repository.this.repository_name

  policy = jsonencode({
    rules = [{
      rulePriority = 1
      description  = "Keep last 10 images"
      action = {
        type = "expire"
      }
      selection = {
        tagStatus   = "any"
        countType   = "imageCountMoreThan"
        countNumber = 10
      }
    }]
  })
}