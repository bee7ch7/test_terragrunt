
resource "aws_ecs_cluster" "main" {
  name = "${var.name}-cluster-${var.environment}"

  setting {
    name  = "containerInsights"
    value = var.container_insights
  }

  tags = {
    Name        = "${var.name}-cluster-${var.environment}",
    Environment = var.environment
  }
}

resource "aws_cloudwatch_log_group" "main" {
  name = "/ecs/${var.main_container_name}-task-${var.environment}"

  tags = {
    Name        = "${var.main_container_name}-task-${var.environment}",
    Environment = var.environment
  }
}