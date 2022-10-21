resource "aws_s3_bucket" "b" {
  bucket = var.tfstates_bucket_name
}

resource "aws_s3_bucket_versioning" "versioning_b" {
  bucket = aws_s3_bucket.b.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "app" {
  bucket = aws_s3_bucket.b.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


resource "aws_s3_bucket" "appspec" {
  bucket = "${var.bucket_prefix}${var.appspec_bucket_name}"
}

resource "aws_s3_bucket_versioning" "versioning_appspec" {
  bucket = aws_s3_bucket.appspec.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_acl" "appspec" {
  bucket = aws_s3_bucket.appspec.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "appspec" {
  bucket = aws_s3_bucket.appspec.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}