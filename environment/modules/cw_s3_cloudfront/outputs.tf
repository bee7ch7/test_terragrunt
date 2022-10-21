output "cloudfront_distribution_hosted_zone_id" {
  value = module.cdn.cloudfront_distribution_hosted_zone_id
}

output "cloudfront_distribution_domain_name" {
  value = module.cdn.cloudfront_distribution_domain_name
}

output "bucket_regional_domain_name" {
  value = module.s3_bucket.s3_bucket_bucket_regional_domain_name
}