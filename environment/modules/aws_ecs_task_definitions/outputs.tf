output "aws_ecs_task_definition_arns" {
  value = { for k, v in aws_ecs_task_definition.this : k => v.arn }
}

output "aws_ecs_task_definition_log_groups" {
  value = { for k, v in aws_cloudwatch_log_group.this : k => v.name }
}
