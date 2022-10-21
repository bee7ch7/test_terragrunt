variable "name" {
  description = "the name of your stack, e.g. \"demo\""
}

variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
}

variable "ssh_key_name" {
  description = "Name of SSH key"
  default     = "cw_vpn"
}

variable "instance_size" {
  description = "Size of EC2 instance"
  default     = "t2.micro"
}

variable "sg_cw_ec2_vpn" {
  description = "Security group for EC2"
}

variable "public_subnet_id" {
  description = "Public subnet id for EC2"
}

variable "install_vpn" {
  description = "Include user_data with pritunl vpn installation"
  type        = bool
}