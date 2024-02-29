resource "aws_iam_instance_profile" "Custom-MongoDBProfile" {
  name = "Custom-MongoDBProfile-${var.random_id}"
  path = "/"
  role = aws_iam_role.Custom-MongoDBRole.id
  tags = {
    yor_trace = "2ebf6b84-58fd-490d-aa49-205eccdf8b31"
  }
}