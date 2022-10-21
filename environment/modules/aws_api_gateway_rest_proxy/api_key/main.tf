resource "aws_api_gateway_api_key" "this" {
  name = "${var.api_key_name}-${var.environment}"
}

resource "aws_api_gateway_usage_plan" "this" {
  name = "${var.usage_plan_name}-${var.environment}"

  api_stages {
    api_id = var.rest_api_id
    stage  = var.rest_api_stage
  }
}

resource "aws_api_gateway_usage_plan_key" "this" {
  key_id        = aws_api_gateway_api_key.this.id
  key_type      = "API_KEY"
  usage_plan_id = aws_api_gateway_usage_plan.this.id
}