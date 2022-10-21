resource "aws_ecs_service" "this" {
  for_each = var.services

  name                               = "${each.value.service_name}-service-${var.environment}"
  cluster                            = each.value.cluster_id
  task_definition                    = each.value.task_definition
  desired_count                      = each.value.desired_count
  deployment_minimum_healthy_percent = each.value.deployment_minimum_healthy_percent
  deployment_maximum_percent         = each.value.deployment_maximum_percent
  launch_type                        = each.value.launch_type
  health_check_grace_period_seconds  = each.value.load_balancer_enabled == true ? each.value.health_check_grace_period_seconds : 0
  force_new_deployment               = each.value.force_new_deployment

  dynamic "service_registries" {
    for_each = each.value.ecs_service_registries
    content {
      registry_arn = service_registries.value.registry_arn
      # port            = lookup(service_registries.value, "port", null)
      container_port = lookup(service_registries.value, "container_port", null)
      container_name = lookup(service_registries.value, "container_name", null)
    }
  }

  dynamic "load_balancer" {
    for_each = each.value.ecs_load_balancers
    content {
      container_name   = load_balancer.value.container_name
      container_port   = load_balancer.value.container_port
      target_group_arn = lookup(load_balancer.value, "target_group_arn", null)
    }
  }

  dynamic "network_configuration" {
    for_each = each.value.network_mode == "awsvpc" ? ["true"] : []
    content {
      security_groups  = each.value.security_groups
      subnets          = each.value.subnet_ids
      assign_public_ip = each.value.assign_public_ip
    }
  }

  deployment_controller {
    type = each.value.deployment_type
  }

  lifecycle {
    ignore_changes = [
      task_definition
      # task_definition,
      # desired_count,
      # load_balancer
    ]
  }

}