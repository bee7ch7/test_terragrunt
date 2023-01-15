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
| [aws_appautoscaling_policy.ecs_policy_cpu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_policy.ecs_policy_memory](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_target.ecs_target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) | resource |
| [aws_cloudwatch_log_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_ecs_cluster.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_service.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) | resource |
| [aws_ecs_task_definition.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_insights"></a> [container\_insights](#input\_container\_insights) | Container Insights: enabled or disabled | `string` | `"disabled"` | no |
| <a name="input_deployment_type"></a> [deployment\_type](#input\_deployment\_type) | Deployment type: CODE\_DEPLOY, ECS, EXTERNAL | `any` | n/a | yes |
| <a name="input_ecsTaskExecutionRole_arn"></a> [ecsTaskExecutionRole\_arn](#input\_ecsTaskExecutionRole\_arn) | Task execution role ARN | `any` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | the name of your environment, e.g. "prod" | `any` | n/a | yes |
| <a name="input_logs_region"></a> [logs\_region](#input\_logs\_region) | Region for ECS logs | `string` | `"us-east-2"` | no |
| <a name="input_main_container_cpu"></a> [main\_container\_cpu](#input\_main\_container\_cpu) | The number of cpu units used by the task | `any` | n/a | yes |
| <a name="input_main_container_image"></a> [main\_container\_image](#input\_main\_container\_image) | Docker image to be launched | `any` | n/a | yes |
| <a name="input_main_container_memory"></a> [main\_container\_memory](#input\_main\_container\_memory) | The amount (in MiB) of memory used by the task | `any` | n/a | yes |
| <a name="input_main_container_name"></a> [main\_container\_name](#input\_main\_container\_name) | Name of main container | `any` | n/a | yes |
| <a name="input_main_container_port"></a> [main\_container\_port](#input\_main\_container\_port) | Port of container | `any` | n/a | yes |
| <a name="input_main_entrypoint"></a> [main\_entrypoint](#input\_main\_entrypoint) | Main entrypoint | `any` | n/a | yes |
| <a name="input_main_list_of_task_secrets"></a> [main\_list\_of\_task\_secrets](#input\_main\_list\_of\_task\_secrets) | List of secrets to pass to task definition | `list(any)` | n/a | yes |
| <a name="input_main_port_mapping"></a> [main\_port\_mapping](#input\_main\_port\_mapping) | Port mappings to pass to task definition | `list(any)` | n/a | yes |
| <a name="input_main_service_desired_count"></a> [main\_service\_desired\_count](#input\_main\_service\_desired\_count) | Number of services running in parallel | `any` | n/a | yes |
| <a name="input_main_target_group_arn1"></a> [main\_target\_group\_arn1](#input\_main\_target\_group\_arn1) | First target group ARN | `any` | n/a | yes |
| <a name="input_main_target_group_arn2"></a> [main\_target\_group\_arn2](#input\_main\_target\_group\_arn2) | Second target group ARN | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | the name of your stack, e.g. "demo" | `any` | n/a | yes |
| <a name="input_private_subnet_ids"></a> [private\_subnet\_ids](#input\_private\_subnet\_ids) | List of private subnet ids | `list(any)` | n/a | yes |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | List of public subnet ids | `list(any)` | n/a | yes |
| <a name="input_sg_ecs_tasks"></a> [sg\_ecs\_tasks](#input\_sg\_ecs\_tasks) | Security group for service | `any` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecs_name"></a> [ecs\_name](#output\_ecs\_name) | n/a |
| <a name="output_ecs_service_main_name"></a> [ecs\_service\_main\_name](#output\_ecs\_service\_main\_name) | n/a |
<!-- END_TF_DOCS -->