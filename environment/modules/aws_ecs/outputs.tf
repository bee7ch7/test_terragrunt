output "ecs_cluster_names" {
  value = { for k, v in aws_ecs_cluster.this : k => v.name }
}