output "eni_ip" {
  value = data.aws_network_interface.this.*.private_ip
}