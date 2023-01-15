<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14, < 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.lambda_logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_subscription_filter.lambda-subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_subscription_filter) | resource |
| [aws_iam_role.lambda_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.lambda_log_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_lambda_function.ingestion_function](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_permission.log_invoke_permission](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |
| [null_resource.build_lambda](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.lambda_assume_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_build_lambda"></a> [build\_lambda](#input\_build\_lambda) | Build the Lambda with Docker? | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Enviroment | `any` | n/a | yes |
| <a name="input_filter_pattern"></a> [filter\_pattern](#input\_filter\_pattern) | Filter logs | `string` | n/a | yes |
| <a name="input_function_role"></a> [function\_role](#input\_function\_role) | IAM Role name that this function will assume. Should provide the AWSLambdaBasicExecutionRole policy. If not specified, an appropriate Role will be created. | `string` | `null` | no |
| <a name="input_lambda_archive"></a> [lambda\_archive](#input\_lambda\_archive) | The path to the lambda archive, the lambda will be build here if the build\_lambda variable is true. | `string` | `"temp/newrelic-log-ingestion.zip"` | no |
| <a name="input_lambda_image_name"></a> [lambda\_image\_name](#input\_lambda\_image\_name) | Created temporary docker image name. Might need to specify if using the module more than once. | `string` | `"newrelic-log-ingestion"` | no |
| <a name="input_lambda_log_retention_in_days"></a> [lambda\_log\_retention\_in\_days](#input\_lambda\_log\_retention\_in\_days) | Number of days to keep logs from the lambda for | `number` | `7` | no |
| <a name="input_log_group_name"></a> [log\_group\_name](#input\_log\_group\_name) | Log group name for trigger | `string` | n/a | yes |
| <a name="input_memory_size"></a> [memory\_size](#input\_memory\_size) | Memory size for the New Relic Log Ingestion Lambda function | `number` | `128` | no |
| <a name="input_nr_infra_logging"></a> [nr\_infra\_logging](#input\_nr\_infra\_logging) | Determines if logs are forwarded to New Relic Infrastructure | `bool` | `true` | no |
| <a name="input_nr_license_key"></a> [nr\_license\_key](#input\_nr\_license\_key) | Your NewRelic license key. | `string` | n/a | yes |
| <a name="input_nr_logging_enabled"></a> [nr\_logging\_enabled](#input\_nr\_logging\_enabled) | Determines if logs are forwarded to New Relic Logging | `bool` | `false` | no |
| <a name="input_nr_tags"></a> [nr\_tags](#input\_nr\_tags) | Additional tags added to the logs | `string` | n/a | yes |
| <a name="input_permissions_boundary"></a> [permissions\_boundary](#input\_permissions\_boundary) | IAM Role Permissions Boundary (optional) | `string` | `null` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | The name of the lambda function and related resources | `string` | `"newrelic-log-ingestion"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to the resources created | `map(string)` | `{}` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | Timeout for the New Relic Log Ingestion Lambda function | `number` | `30` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_function_arn"></a> [function\_arn](#output\_function\_arn) | Log ingestion lambda function ARN |
| <a name="output_lambda_archive"></a> [lambda\_archive](#output\_lambda\_archive) | n/a |
<!-- END_TF_DOCS -->