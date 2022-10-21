output "sqs_main_arn" {
  value = aws_sqs_queue.main_queue.arn
}

output "sqs_main_id" {
  value = aws_sqs_queue.main_queue.id
}

output "sqs_main_url" {
  value = aws_sqs_queue.main_queue.url
}

output "sqs_main_name" {
  value = aws_sqs_queue.main_queue.name
}

output "sqs_main_dlq_arn" {
  value = aws_sqs_queue.main_dlq.arn
}

output "sqs_main_dlq_id" {
  value = aws_sqs_queue.main_dlq.id
}

output "sqs_main_dlq_url" {
  value = aws_sqs_queue.main_dlq.url
}

output "sqs_main_dlq_name" {
  value = aws_sqs_queue.main_dlq.name
}