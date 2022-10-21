module "cdn" {
  source              = "terraform-aws-modules/cloudfront/aws"
  version             = "2.9.3"
  comment             = "Cover Whale Cloudfront"
  is_ipv6_enabled     = true
  price_class         = "PriceClass_100"
  wait_for_deployment = false

  aliases = var.aliases

  create_origin_access_identity = true
  origin_access_identities = {
    s3_webfront = "Cloudfront to S3"
    lb_backend  = "Load Balancer"
  }

  origin = {
    s3_webfront = {
      domain_name = module.s3_bucket.s3_bucket_bucket_regional_domain_name
      s3_origin_config = {
        origin_access_identity = "s3_webfront"
        # key in `origin_access_identities`
      }
    }

    lb_backend = {
      domain_name = var.alb_dns_name
      custom_origin_config = {
        http_port              = 80
        https_port             = 443
        origin_protocol_policy = "http-only"
        origin_ssl_protocols   = ["TLSv1.2"]
      }
    }

  }

  default_cache_behavior = {
    target_origin_id       = "s3_webfront" # key in `origin` above
    viewer_protocol_policy = "redirect-to-https"

    min_ttl     = 0
    default_ttl = 3600
    max_ttl     = 86400

    allowed_methods = ["GET", "HEAD"]
    cached_methods  = ["GET", "HEAD"]
    compress        = true
    query_string    = false
    # function_association = {
    #   viewer-request = {
    #     function_arn = aws_cloudfront_function.viewer_request.arn
    #   }
    # }
  }

  ordered_cache_behavior = var.ordered_cache_behavior

  viewer_certificate = var.viewer_certificate

  default_root_object = "index.html"
  custom_error_response = {
    error400 = {
      error_code         = 400
      response_code      = 400
      response_page_path = "/index.html"
    }
    error403 = {
      error_code         = 403
      response_code      = 200
      response_page_path = "/index.html"
    }
    error404 = {
      error_code         = 404
      response_code      = 404
      response_page_path = "/index.html"
    }
    error405 = {
      error_code         = 405
      response_code      = 405
      response_page_path = "/index.html"
    }
    error414 = {
      error_code         = 414
      response_code      = 414
      response_page_path = "/index.html"
    }
    error416 = {
      error_code         = 416
      response_code      = 416
      response_page_path = "/index.html"
    }
    error500 = {
      error_code         = 500
      response_code      = 500
      response_page_path = "/index.html"
    }
    error501 = {
      error_code         = 501
      response_code      = 501
      response_page_path = "/index.html"
    }
    error502 = {
      error_code         = 502
      response_code      = 502
      response_page_path = "/index.html"
    }
    error503 = {
      error_code         = 503
      response_code      = 503
      response_page_path = "/index.html"
    }
    error504 = {
      error_code         = 504
      response_code      = 504
      response_page_path = "/index.html"
    }
  }

  tags = {
    Name        = "${var.name}-Distribution-${var.environment}",
    Environment = var.environment
  }
}
