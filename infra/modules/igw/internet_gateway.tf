resource "aws_internet_gateway" "Custom-testIgw" {
  vpc_id = var.vpc_id
}
