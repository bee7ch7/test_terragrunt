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
| [aws_appautoscaling_target.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ecs_appasg_list"></a> [ecs\_appasg\_list](#input\_ecs\_appasg\_list) | n/a | <pre>map(object({<br>    name             = string<br>    ecs_service_name = string<br>    max_capacity     = number<br>    min_capacity     = number<br>    cpu = object({<br>      target_value       = number<br>      scale_in_cooldown  = number<br>      scale_out_cooldown = number<br>    })<br>    memory = object({<br>      target_value       = number<br>      scale_in_cooldown  = number<br>      scale_out_cooldown = number<br>    })<br>  }))</pre> | n/a | yes |
| <a name="input_ecs_cluster_name"></a> [ecs\_cluster\_name](#input\_ecs\_cluster\_name) | Cluster name | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->