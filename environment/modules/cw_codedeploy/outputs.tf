output "codedeploy_group_names" {
  value = { for k, v in aws_codedeploy_deployment_group.this : k => v.deployment_group_name }
}

output "codedeploy_group_configs" {
  value = { for k, v in aws_codedeploy_deployment_group.this : k => v.deployment_config_name }
}

output "codedeploy_apps" {
  value = { for k, v in aws_codedeploy_app.this : k => v.name }
}