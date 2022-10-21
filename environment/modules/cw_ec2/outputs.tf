output "ec2_vpn_ip" {
  value = aws_instance.vpn.public_ip
}

output "ec2_vpn_dns" {
  value = aws_instance.vpn.public_dns
}

output "ec2_vpn_eip" {
  value = aws_eip.vpn.public_ip
}