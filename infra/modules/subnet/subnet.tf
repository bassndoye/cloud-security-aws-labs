
resource "aws_subnet" "subnet1" {
  tags = {
    Name      = "testSubnet1-${var.random_id}"
    yor_trace = "5dff5622-e28b-4acd-8893-c2def48e9915"
  }
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.0.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = var.vpc_id
  availability_zone                              = data.aws_availability_zones.available.names[0]
}

resource "aws_subnet" "subnet2" {
  tags = {
    Name      = "testSubnet2-${var.random_id}"
    yor_trace = "6a3f7fbe-9c77-4bdd-adc6-a62eee784e5e"
  }
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.32.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = var.vpc_id
  availability_zone                              = data.aws_availability_zones.available.names[0]
}

resource "aws_subnet" "subnet3" {
  tags = {
    Name      = "testSubnet3-${var.random_id}"
    yor_trace = "7ad06c96-6f29-41e3-a2dd-e23d4e2a53a9"
  }
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = var.vpc_id
  availability_zone                              = data.aws_availability_zones.available.names[1]
}
