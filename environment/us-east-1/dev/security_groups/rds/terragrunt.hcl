include "root" {
  path = find_in_parent_folders()
}


terraform {
  source = "../../../../modules/cw_security_groups"

}

dependency "vpc" {
  config_path = "../../vpc"
  mock_outputs = {
    vpc_id = "temporary-dummy-id"
  }
}

inputs = {
  // environment = "dev"
  vpc_id = dependency.vpc.outputs.vpc_id
  groups = {
    cw-db = {
      name = "cw-db",
      ports_in = {
        from_tcp         = ["3306", "1433"],
        to_tcp           = [],
        from_udp         = [],
        to_udp           = [],
        cidr_blocks      = ["10.0.0.0/8"],
        ipv6_cidr_blocks = [],
        security_groups  = []
      },

      # egress
      ports_out = {
        cidr_blocks      = [],
        ipv6_cidr_blocks = []
      }
    }
  }
}

