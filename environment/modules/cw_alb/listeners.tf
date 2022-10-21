resource "aws_alb_listener" "http-1" {
  load_balancer_arn = aws_lb.main.id
  port              = var.port_listener1
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }

  lifecycle {
    ignore_changes = [
      default_action
    ]
  }
}

resource "aws_lb_listener" "https-1" {
  count             = length(var.certificate_arn) > 0 ? 1 : 0
  load_balancer_arn = aws_lb.main.id
  port              = var.port_https_listener1
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = var.certificate_arn

  default_action {
    type = "forward"
    # target_group_arn = aws_alb_target_group.main-1.id
    target_group_arn = var.target_group_cw_blue
  }

  lifecycle {
    ignore_changes = [
      default_action
    ]
  }
}

resource "aws_alb_listener" "test-http-2" {
  load_balancer_arn = aws_lb.main.id
  port              = var.test_port_listener2
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = "8443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }

  lifecycle {
    ignore_changes = [
      default_action
    ]
  }
}

resource "aws_lb_listener" "test-https-2" {
  count             = length(var.certificate_arn) > 0 ? 1 : 0
  load_balancer_arn = aws_lb.main.id
  port              = var.test_port_https_listener2
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = var.certificate_arn

  default_action {
    type = "forward"
    # target_group_arn = aws_alb_target_group.main-2.id
    target_group_arn = var.target_group_cw_blue
  }

  lifecycle {
    ignore_changes = [
      default_action
    ]
  }
}