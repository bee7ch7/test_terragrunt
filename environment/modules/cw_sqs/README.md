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
| [aws_sqs_queue.main_dlq](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |
| [aws_sqs_queue.main_queue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name | `any` | n/a | yes |
| <a name="input_main_sqs_queue"></a> [main\_sqs\_queue](#input\_main\_sqs\_queue) | Name for main queue | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sqs_main_arn"></a> [sqs\_main\_arn](#output\_sqs\_main\_arn) | n/a |
| <a name="output_sqs_main_dlq_arn"></a> [sqs\_main\_dlq\_arn](#output\_sqs\_main\_dlq\_arn) | n/a |
| <a name="output_sqs_main_dlq_id"></a> [sqs\_main\_dlq\_id](#output\_sqs\_main\_dlq\_id) | n/a |
| <a name="output_sqs_main_dlq_name"></a> [sqs\_main\_dlq\_name](#output\_sqs\_main\_dlq\_name) | n/a |
| <a name="output_sqs_main_dlq_url"></a> [sqs\_main\_dlq\_url](#output\_sqs\_main\_dlq\_url) | n/a |
| <a name="output_sqs_main_id"></a> [sqs\_main\_id](#output\_sqs\_main\_id) | n/a |
| <a name="output_sqs_main_name"></a> [sqs\_main\_name](#output\_sqs\_main\_name) | n/a |
| <a name="output_sqs_main_url"></a> [sqs\_main\_url](#output\_sqs\_main\_url) | n/a |
<!-- END_TF_DOCS -->