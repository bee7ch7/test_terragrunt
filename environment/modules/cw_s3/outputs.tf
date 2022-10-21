output "s3_arn" {
  #   value = { for k, v in module.s3_bucket : k => v.id }
  value = module.s3_bucket
}