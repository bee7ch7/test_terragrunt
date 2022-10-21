resource "aws_sqs_queue" "main_queue" {
  name                      = "${var.main_sqs_queue}-${var.environment}"
  delay_seconds             = 0
  max_message_size          = 262144
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.main_dlq.arn
    maxReceiveCount     = 4
  })
  sqs_managed_sse_enabled = true

  tags = {
    Name        = "${var.main_sqs_queue}-sqs-${var.environment}",
    Environment = var.environment
  }
}

resource "aws_sqs_queue" "main_dlq" {
  name                    = "${var.main_sqs_queue}-${var.environment}-dlq"
  sqs_managed_sse_enabled = true

  tags = {
    Name        = "${var.main_sqs_queue}-dlq-sqs-${var.environment}",
    Environment = var.environment
  }
}