<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecs_service.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment | `any` | n/a | yes |
| <a name="input_services"></a> [services](#input\_services) | n/a | <pre>map(object({<br>    service_name                       = string<br>    cluster_id                         = string<br>    task_definition                    = string<br>    desired_count                      = number<br>    deployment_maximum_percent         = number<br>    deployment_minimum_healthy_percent = number<br>    launch_type                        = string<br>    health_check_grace_period_seconds  = number<br>    force_new_deployment               = bool<br>    ecs_service_registries             = list(any)<br>    load_balancer_enabled              = bool<br><br>    ecs_load_balancers = list(object({<br>      container_name   = string<br>      container_port   = number<br>      target_group_arn = string<br>    }))<br><br>    network_mode     = string<br>    security_groups  = list(any)<br>    subnet_ids       = list(any)<br>    assign_public_ip = bool<br><br>    deployment_type = string<br><br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecs_service_cluster"></a> [ecs\_service\_cluster](#output\_ecs\_service\_cluster) | n/a |
| <a name="output_ecs_service_names"></a> [ecs\_service\_names](#output\_ecs\_service\_names) | n/a |
<!-- END_TF_DOCS -->