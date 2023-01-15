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
| [aws_ecr_lifecycle_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy) | resource |
| [aws_ecrpublic_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecrpublic_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | the name of your environment, e.g. "prod" | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | the name of your stack, e.g. "demo" | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_ecr_repository_id"></a> [aws\_ecr\_repository\_id](#output\_aws\_ecr\_repository\_id) | n/a |
| <a name="output_aws_ecr_repository_name"></a> [aws\_ecr\_repository\_name](#output\_aws\_ecr\_repository\_name) | n/a |
| <a name="output_aws_ecr_repository_uri"></a> [aws\_ecr\_repository\_uri](#output\_aws\_ecr\_repository\_uri) | n/a |
<!-- END_TF_DOCS -->