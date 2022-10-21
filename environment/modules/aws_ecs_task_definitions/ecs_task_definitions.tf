resource "aws_ecs_task_definition" "this" {
  for_each = var.task_definitions

  family                   = "${each.value.container_name}-task-${var.environment}"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = each.value.container_cpu
  memory                   = each.value.container_memory
  execution_role_arn       = each.value.ecsTaskExecutionRole_arn
  container_definitions = jsonencode([{
    name         = "${each.value.container_name}-${var.environment}"
    image        = "${each.value.container_image}"
    entrypoint   = lookup(each.value, "entrypoint", null)
    essential    = true
    portMappings = each.value.port_mapping
    logConfiguration = {
      logDriver = "awslogs"
      options = {
        awslogs-group         = "/ecs/${each.value.container_name}-task-${var.environment}"
        awslogs-stream-prefix = "ecs"
        awslogs-region        = each.value.logs_region
      }
    }
    secrets          = lookup(each.value, "list_of_task_secrets", null)
    environmentFiles = lookup(each.value, "environmentFiles", null)
    command          = lookup(each.value, "command", null)
    # command = each.value.command

  }])

  tags = {
    Name        = "${each.value.container_name}-task-${var.environment}",
    Environment = var.environment
  }

  lifecycle {
    ignore_changes = [
      container_definitions
    ]
  }
}

resource "aws_cloudwatch_log_group" "this" {
  for_each = var.task_definitions

  name              = "/ecs/${each.value.container_name}-task-${var.environment}"
  retention_in_days = each.value.log_retantion_period
  tags = {
    Name        = "${each.value.container_name}-task-${var.environment}",
    Environment = var.environment
  }
}