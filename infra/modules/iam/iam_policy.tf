resource "aws_iam_policy" "Custom-MongoDBPolicy" {
  name = "Custom-MongoDBPolicy-${var.random_id}"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ec2:*",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
  tags = {
    yor_trace = "4058fadb-2f7c-499f-bd7c-8dc59a95cdd5"
  }
}


resource "aws_iam_policy" "Custom-eksWorkNodeEBSPolicy" {
  name = "Custom-eksWorkNodeEBSPolicy-${var.random_id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:AttachVolume",
        "ec2:CreateSnapshot",
        "ec2:CreateTags",
        "ec2:CreateVolume",
        "ec2:DeleteSnapshot",
        "ec2:DeleteTags",
        "ec2:DeleteVolume",
        "ec2:DescribeInstances",
        "ec2:DescribeSnapshots",
        "ec2:DescribeTags",
        "ec2:DescribeVolumes",
        "ec2:DetachVolume"
      ],
      "Resource": "*"
    }
  ]
}
POLICY
  tags = {
    yor_trace = "a0d33c3a-af59-4e52-b281-df286e004e32"
  }
}
