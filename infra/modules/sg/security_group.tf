
resource "aws_security_group" "Custom-MongoDBAccess" {
  description = "Allow ssh and mongdb access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "27017"
    protocol    = "tcp"
    self        = "false"
    to_port     = "27017"
  }



  name   = "Custom-MongoDBAccess-${var.random_id}"
  vpc_id = var.vpc_id
  tags = {
    yor_trace = "3e0b5716-f882-4534-9659-cf36fbde6065"
  }
}