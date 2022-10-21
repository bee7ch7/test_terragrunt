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
    cw-alb = {
      name = "cw-alb",
      ports_in = {
        from_tcp         = ["80", "81", "443", "8443"],
        to_tcp           = [],
        from_udp         = [],
        to_udp           = [],
        cidr_blocks      = [],
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

