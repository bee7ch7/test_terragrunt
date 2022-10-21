output "db_subnet_group_names" {
  value = { for k, v in aws_db_subnet_group.this : k => v.name }
}