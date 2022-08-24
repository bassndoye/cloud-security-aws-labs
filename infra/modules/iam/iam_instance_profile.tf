resource "aws_iam_instance_profile" "Custom-MongoDBProfile" {
  name = "Custom-MongoDBProfile-${var.random_id}"
  path = "/"
  role = aws_iam_role.Custom-MongoDBRole.id
}