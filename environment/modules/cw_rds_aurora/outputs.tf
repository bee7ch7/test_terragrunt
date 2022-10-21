output "db_name" {
  value = module.aurora.cluster_database_name
}

output "db_endpoint" {
  value = module.aurora.cluster_endpoint
}

output "db_reader_endpoint" {
  value = module.aurora.cluster_reader_endpoint
}

output "db_hosted_zone" {
  value = module.aurora.cluster_hosted_zone_id
}

output "db_id" {
  value = module.aurora.cluster_id
}

output "db_port" {
  value = module.aurora.cluster_port
}

output "db_user" {
  value     = module.aurora.cluster_master_username
  sensitive = true
}

