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
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_ecs_task_definition.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment | `any` | n/a | yes |
| <a name="input_task_definitions"></a> [task\_definitions](#input\_task\_definitions) | n/a | <pre>map(object({<br>    container_cpu            = number<br>    container_memory         = number<br>    ecsTaskExecutionRole_arn = string<br>    entrypoint               = optional(list(any))<br>    container_image          = string<br>    container_name           = string<br>    logs_region              = string<br>    log_retantion_period     = number<br><br>    environmentFiles     = optional(list(map(any)))<br>    port_mapping         = list(any)<br>    list_of_task_secrets = optional(list(map(any)))<br>    command              = optional(list(any))<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_ecs_task_definition_arns"></a> [aws\_ecs\_task\_definition\_arns](#output\_aws\_ecs\_task\_definition\_arns) | n/a |
| <a name="output_aws_ecs_task_definition_log_groups"></a> [aws\_ecs\_task\_definition\_log\_groups](#output\_aws\_ecs\_task\_definition\_log\_groups) | n/a |
<!-- END_TF_DOCS -->