# output "main_target_group_arn1" {
#   value = aws_alb_target_group.main-1.arn
# }

# output "main_target_group_arn2" {
#   value = aws_alb_target_group.main-2.arn
# }

# output "main_target_group_name1" {
#   value = aws_alb_target_group.main-1.name
# }

# output "main_target_group_name2" {
#   value = aws_alb_target_group.main-2.name
# }

output "alb_listener1" {
  value = aws_alb_listener.http-1.arn
}

output "alb_test_listener2" {
  value = aws_alb_listener.test-http-2.arn
}

output "alb_https_listener1" {
  value = aws_lb_listener.https-1[0].arn
}

output "alb_test_https_listener2" {
  value = aws_lb_listener.test-https-2[0].arn
}

output "main_dns_name" {
  value = aws_lb.main.dns_name
}

output "main_lb_arn" {
  value = aws_lb.main.arn
}

output "main_lb_id" {
  value = aws_lb.main.id
}

output "main_zone_id" {
  value = aws_lb.main.zone_id
}