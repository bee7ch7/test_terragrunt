resource "aws_ecs_task_definition" "main" {
  family                   = "${var.main_container_name}-task-${var.environment}"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.main_container_cpu
  memory                   = var.main_container_memory
  execution_role_arn       = var.ecsTaskExecutionRole_arn
  container_definitions = jsonencode([{
    name         = "${var.main_container_name}-${var.environment}"
    image        = "${var.main_container_image}"
    entrypoint   = [var.main_entrypoint]
    essential    = true
    portMappings = var.main_port_mapping
    logConfiguration = {
      logDriver = "awslogs"
      options = {
        awslogs-group         = aws_cloudwatch_log_group.main.name
        awslogs-stream-prefix = "ecs"
        awslogs-region        = var.logs_region
      }
    }
    secrets = var.main_list_of_task_secrets

  }])

  tags = {
    Name        = "${var.main_container_name}-task-${var.environment}",
    Environment = var.environment
  }

  lifecycle {
    ignore_changes = [
      container_definitions
    ]
  }
}
