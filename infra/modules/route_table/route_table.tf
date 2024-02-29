
resource "aws_route_table" "Custom-RouteTable" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  vpc_id = var.vpc_id
  tags = {
    yor_trace = "6dc7dab4-1446-4954-b3ff-a0f9f5f7d2cb"
  }
}
