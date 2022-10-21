output "target_group_arns" {
  value = { for k, v in aws_alb_target_group.this : k => v.arn }
}
output "target_group_names" {
  value = { for k, v in aws_alb_target_group.this : k => v.name }
}