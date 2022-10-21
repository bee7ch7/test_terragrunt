resource "aws_ecs_service" "main" {
  name                               = "${var.main_container_name}-service-${var.environment}"
  cluster                            = aws_ecs_cluster.main.id
  task_definition                    = aws_ecs_task_definition.main.arn
  desired_count                      = var.main_service_desired_count
  deployment_minimum_healthy_percent = 50
  deployment_maximum_percent         = 200
  health_check_grace_period_seconds  = 60
  launch_type                        = "FARGATE"
  scheduling_strategy                = "REPLICA"

  network_configuration {
    security_groups = [var.sg_ecs_tasks]
    subnets         = var.private_subnet_ids
    # assign_public_ip = true
  }

  load_balancer {
    target_group_arn = var.main_target_group_arn1
    container_name   = "${var.main_container_name}-${var.environment}"
    container_port   = var.main_container_port
  }

  # service_registries {
  #   registry_arn   = var.discovery_service_nginx
  #   container_name = "nginx"
  # }

  deployment_controller {
    type = var.deployment_type
  }

  # ignore task_definition changes as the revision changes on deploy
  # desired_count is ignored as it can change due to autoscaling policy
  lifecycle {
    ignore_changes = [
      task_definition,
      desired_count,
      load_balancer
    ]
  }
}