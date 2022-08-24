resource "aws_route_table_association" "Custom-Subnet1-Asso" {
  subnet_id      = var.subnet1_id
  route_table_id = aws_route_table.Custom-RouteTable.id
}

resource "aws_route_table_association" "Custom-Subnet2-Asso" {
  subnet_id      = var.subnet2_id
  route_table_id = aws_route_table.Custom-RouteTable.id
}

resource "aws_route_table_association" "Custom-Subnet3-Asso" {
  subnet_id      = var.subnet3_id
  route_table_id = aws_route_table.Custom-RouteTable.id
}
