output "ecs_service_names" {
  value = { for k, v in aws_ecs_service.this : k => v.name }
}

output "ecs_service_cluster" {
  value = { for k, v in aws_ecs_service.this : k => v.cluster }
}