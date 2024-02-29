resource "aws_iam_role" "Custom-AmazonEKSNodeRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy", "${aws_iam_policy.Custom-eksWorkNodeEBSPolicy.arn}"]
  max_session_duration = "3600"
  name                 = "Custom-AmazonEKSNodeRole-${var.random_id}"
  path                 = "/"
  tags = {
    yor_trace = "2a137bb7-9bcc-4913-97cc-c9a2f2b0d10c"
  }
}



resource "aws_iam_role" "Custom-AmazonEKSClusterRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows access to other AWS service resources that are required to operate clusters managed by EKS."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"]
  max_session_duration = "3600"
  name                 = "Custom-AmazonEKSClusterRole-${var.random_id}"
  path                 = "/"
  tags = {
    yor_trace = "c2269f96-a5d7-42e3-af04-dfd878789b19"
  }
}

resource "aws_iam_role" "Custom-MongoDBRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = [aws_iam_policy.Custom-MongoDBPolicy.arn, "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "Custom-MongoDBRole-${var.random_id}"
  path                 = "/"
  tags = {
    yor_trace = "194b0bae-26e6-4a92-9897-844f2758978e"
  }
}

