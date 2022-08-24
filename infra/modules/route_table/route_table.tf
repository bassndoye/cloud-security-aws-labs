
resource "aws_route_table" "Custom-RouteTable" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  vpc_id = var.vpc_id
}
