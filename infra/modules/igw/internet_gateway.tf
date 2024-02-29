resource "aws_internet_gateway" "Custom-testIgw" {
  vpc_id = var.vpc_id
  tags = {
    yor_trace = "e98bff6c-2764-4aad-80bf-4434e030b927"
  }
}
