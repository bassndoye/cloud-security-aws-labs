resource "random_integer" "unique_id" {
  min = 1000
  max = 9999
}
resource "aws_eks_cluster" "Custom-EKS-Cluster" {
  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "10.100.0.0/16"
  }

  name     = "Custom-EKS-Cluster-${random_integer.unique_id.id}"
  role_arn = data.terraform_remote_state.infra.outputs.infra_iam_AmazonEKSClusterRole_arn
  version  = "1.23"

  vpc_config {
    endpoint_private_access = "false"
    endpoint_public_access  = "true"
    public_access_cidrs     = ["0.0.0.0/0"]
    subnet_ids              = [data.terraform_remote_state.infra.outputs.infra_subnet1_id, data.terraform_remote_state.infra.outputs.infra_subnet2_id, data.terraform_remote_state.infra.outputs.infra_subnet3_id]
  }
}
