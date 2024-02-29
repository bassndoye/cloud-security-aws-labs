resource "aws_vpc" "vpcTest" {
  tags = {
    Name      = "testVPC-${var.random_id}"
    yor_trace = "99ef857a-d8fb-4550-af25-ec24a406fa9a"
  }
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "172.31.0.0/16"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"
}
