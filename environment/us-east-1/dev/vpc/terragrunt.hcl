include "root" {
  path = find_in_parent_folders()
}


terraform {
  source = "../../../modules/aws_vpc"
}

inputs = {
  cidr                          = "10.10.0.0/16"
  availability_zones            = ["us-east-1a", "us-east-1c", "us-east-1e", "us-east-1f"]
  private_subnets               = ["10.10.0.0/20", "10.10.16.0/20", "10.10.32.0/20", "10.10.64.0/20"] # ["10.0.0.0/20", "10.0.32.0/20", "10.0.64.0/20"] 
  private_subnets_with_internet = true
  private_subnets_single_nat    = true
  one_nat_gateway_per_az        = false

  public_subnets           = ["10.10.112.0/20", "10.10.128.0/20", "10.10.144.0/20", "10.10.160.0/20"]    # ["10.0.16.0/20", "10.0.48.0/20", "10.0.80.0/20"]
  db_subnets               = ["10.10.208.0/24", "10.10.209.0/24", "10.10.210.0/24", "10.10.211.0/24"] # ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  db_subnets_with_internet = true

  name = "cw"
  // environment = "dev"
}

