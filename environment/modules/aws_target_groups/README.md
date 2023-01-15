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
| [aws_alb_target_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | the name of your environment, e.g. "prod" | `any` | n/a | yes |
| <a name="input_tg_groups"></a> [tg\_groups](#input\_tg\_groups) | n/a | `map(any)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_target_group_arns"></a> [target\_group\_arns](#output\_target\_group\_arns) | n/a |
| <a name="output_target_group_names"></a> [target\_group\_names](#output\_target\_group\_names) | n/a |
<!-- END_TF_DOCS -->