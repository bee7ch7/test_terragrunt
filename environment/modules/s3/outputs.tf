output "tfstates_bucket_arn" {
  value = aws_s3_bucket.b.arn
}

output "appspec_bucket_arn" {
  value = aws_s3_bucket.appspec.arn
}