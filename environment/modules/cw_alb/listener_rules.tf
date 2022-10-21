# resource "aws_lb_listener_rule" "api_client" {
#   listener_arn = aws_lb_listener.https-1[0].arn
#   #   priority     = 100

#   action {
#     type             = "forward"
#     target_group_arn = aws_alb_target_group.main-1.id
#   }

#   #   condition {
#   #     path_pattern {
#   #       values = ["/api/client/*"]
#   #     }
#   #   }

#   condition {
#     host_header {
#       values = ["dev-api.prime.coverwhale.com"]
#     }
#   }`
# }