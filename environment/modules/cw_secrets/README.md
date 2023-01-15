<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.db_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.db_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [random_password.db_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | the name of your environment, e.g. "prod" | `any` | n/a | yes |
| <a name="input_secret_password_name"></a> [secret\_password\_name](#input\_secret\_password\_name) | the name of your stack, e.g. "demo" | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_password_secret_arn"></a> [db\_password\_secret\_arn](#output\_db\_password\_secret\_arn) | n/a |
| <a name="output_db_password_secret_string"></a> [db\_password\_secret\_string](#output\_db\_password\_secret\_string) | n/a |
<!-- END_TF_DOCS -->