module "s3_bucket" {
  for_each      = var.bucket_settings
  source        = "terraform-aws-modules/s3-bucket/aws"
  version       = "3.4.0"
  bucket        = each.value.name
  acl           = each.value.acl
  force_destroy = true

  versioning = {
    enabled = each.value.versioning_enabled
  }

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }

}

# resource "aws_s3_bucket" "appspec" {
#   bucket = "appspec.coverwhale.com"
# }

# resource "aws_s3_bucket_versioning" "versioning_appspec" {
#   bucket = aws_s3_bucket.appspec.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }

# resource "aws_s3_bucket_acl" "appspec" {
#   bucket = aws_s3_bucket.appspec.id
#   acl    = "private"
# }

# resource "aws_s3_bucket_public_access_block" "appspec" {
#   bucket = aws_s3_bucket.appspec.id

#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }