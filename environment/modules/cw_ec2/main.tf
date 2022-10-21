
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "vpn" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.instance_size
  security_groups = [var.sg_cw_ec2_vpn]
  key_name        = var.ssh_key_name
  subnet_id       = var.public_subnet_id
  user_data       = var.install_vpn == true ? "${file("installation_pritunl_vpn.sh")}" : null

  tags = {
    Name        = "${var.name}-vpn-${var.environment}",
    Environment = var.environment
  }

  lifecycle {
    ignore_changes = [
      ami,
      security_groups,
      user_data
    ]
  }
}

resource "aws_eip" "vpn" {
  vpc      = true
  instance = aws_instance.vpn.id

  tags = {
    Name        = "${var.name}-ec2-vpn-eip-${var.environment}",
    Environment = var.environment
  }
}

