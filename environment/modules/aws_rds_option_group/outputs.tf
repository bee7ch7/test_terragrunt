output "option_group_names" {
  value = { for k, v in aws_db_option_group.this : k => v.name }
}

output "option_group_arns" {
  value = { for k, v in aws_db_option_group.this : k => v.arn }
}