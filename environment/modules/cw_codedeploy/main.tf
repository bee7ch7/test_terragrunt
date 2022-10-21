resource "aws_codedeploy_app" "this" {
  for_each         = var.apps_list
  compute_platform = "ECS"
  name             = "d-${each.value.name}-${var.environment}"
}

resource "aws_codedeploy_deployment_group" "this" {
  for_each               = var.apps_list
  app_name               = "d-${each.value.name}-${var.environment}"
  deployment_config_name = each.value.code_deploy_strategy
  deployment_group_name  = "dg-${each.value.name}-${var.environment}"
  service_role_arn       = each.value.ecsCodeDeployRole_arn

  auto_rollback_configuration {
    enabled = true
    events  = ["DEPLOYMENT_FAILURE"]
  }

  blue_green_deployment_config {
    deployment_ready_option {
      action_on_timeout = "CONTINUE_DEPLOYMENT"
    }

    terminate_blue_instances_on_deployment_success {
      action                           = "TERMINATE"
      termination_wait_time_in_minutes = each.value.termination_wait_time_in_minutes
    }
  }

  deployment_style {
    deployment_option = "WITH_TRAFFIC_CONTROL"
    deployment_type   = "BLUE_GREEN"
  }

  ecs_service {
    cluster_name = each.value.ecs_cluster_name
    service_name = each.value.ecs_service_main_name
  }

  load_balancer_info {
    target_group_pair_info {
      prod_traffic_route {
        listener_arns = [
          each.value.alb_listener1
        ]
      }

      target_group {
        name = each.value.main_target_group_name1
      }

      target_group {
        name = each.value.main_target_group_name2
      }

      test_traffic_route {
        listener_arns = [
          each.value.alb_test_listener2
        ]
      }
    }
  }

  trigger_configuration {
    trigger_events = [
      "DeploymentSuccess",
      "DeploymentFailure",
    ]

    trigger_name       = each.value.trigger_name
    trigger_target_arn = each.value.trigger_sns_topic_arn
  }

  lifecycle {
    ignore_changes = [blue_green_deployment_config]
  }

  depends_on = [
    aws_codedeploy_app.this
  ]
}