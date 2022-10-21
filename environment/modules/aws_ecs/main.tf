
resource "aws_ecs_cluster" "this" {
  for_each = var.clusters

  name = "${each.value.name}-cluster-${var.environment}"

  setting {
    name  = "containerInsights"
    value = each.value.container_insights
  }

  tags = {
    Name        = "${each.value.name}-cluster-${var.environment}",
    Environment = var.environment
  }
}
