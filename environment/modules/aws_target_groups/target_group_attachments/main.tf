data "aws_network_interface" "this" {
  count = length(var.eni_id) > 0 ? length(var.eni_id) : 0
  id    = var.eni_id[count.index]
}

resource "aws_lb_target_group_attachment" "this" {
  count            = length(var.eni_id) > 0 ? length(var.eni_id) : 0
  target_group_arn = var.target_group_arn
  target_id        = element(data.aws_network_interface.this.*.private_ip, count.index)
  port             = var.port
}