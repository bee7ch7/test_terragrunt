output "security_group_ids" {
  value = { for k, v in aws_security_group.this : k => v.id }
}

# output "web77" {
#   value = aws_security_group.this["web"].id
# }
