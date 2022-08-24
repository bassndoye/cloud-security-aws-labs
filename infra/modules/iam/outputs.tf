output "iam_role_Custom-AmazonEKSNodeRole_id" {
  value = "${aws_iam_role.Custom-AmazonEKSNodeRole.id}"
}

output "iam_role_Custom-AmazonEKSNodeRole_arn" {
  value = "${aws_iam_role.Custom-AmazonEKSNodeRole.arn}"
}

output "iam_role_Custom-AmazonEKSClusterRole_id" {
  value = "${aws_iam_role.Custom-AmazonEKSClusterRole.id}"
}

output "iam_role_Custom-AmazonEKSClusterRole_arn" {
  value = "${aws_iam_role.Custom-AmazonEKSClusterRole.arn}"
}

output "iam_role_Custom-MongoDBRole_id" {
  value = "${aws_iam_role.Custom-MongoDBRole.id}"
}

output "iam_policy_Custom-MongoDBPolicy_id" {
  value = "${aws_iam_policy.Custom-MongoDBPolicy.id}"
}

output "iam_instance_profile_Custom-MongoDBProfile_id" {
  value = "${aws_iam_instance_profile.Custom-MongoDBProfile.id}"
}
