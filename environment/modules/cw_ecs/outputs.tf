output "ecs_name" {
  value = aws_ecs_cluster.main.name
}

output "ecs_service_main_name" {
  value = aws_ecs_service.main.name
}
