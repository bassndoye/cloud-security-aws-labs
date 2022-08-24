resource "aws_eks_node_group" "Custom-EKS-NodeGrp" {
  ami_type        = "AL2_x86_64"
  capacity_type   = "ON_DEMAND"
  cluster_name    = "${aws_eks_cluster.Custom-EKS-Cluster.name}"
  disk_size       = "20"
  instance_types  = ["t3.medium"]
  node_group_name = "Custom-EKS-NodeGrp-${random_integer.unique_id.id}"
  node_role_arn   = data.terraform_remote_state.infra.outputs.infra_iam_AmazonEKSNodeRole_arn
  release_version = "1.23.7-20220802"

  scaling_config {
    desired_size = "2"
    max_size     = "2"
    min_size     = "1"
  }

  subnet_ids              = [data.terraform_remote_state.infra.outputs.infra_subnet1_id, data.terraform_remote_state.infra.outputs.infra_subnet2_id, data.terraform_remote_state.infra.outputs.infra_subnet3_id]

  update_config {
    max_unavailable = "1"
  }

  version = "1.23"
}
