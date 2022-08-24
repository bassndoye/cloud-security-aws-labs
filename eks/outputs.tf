output "eks_cluster_id" {
  value = "${aws_eks_cluster.Custom-EKS-Cluster.id}"
}

output "eks_cluster_endpoint" {
  value = "${aws_eks_cluster.Custom-EKS-Cluster.endpoint}"
}


output "eks_cluster_certificate" {
  value = "${aws_eks_cluster.Custom-EKS-Cluster.certificate_authority.0.data}"
}

output "eks_cluster_name" {
  value = "${aws_eks_cluster.Custom-EKS-Cluster.name}"
}


output "aws_eks_node_group_Custom-EKS-NodeGrp_id" {
  value = "${aws_eks_node_group.Custom-EKS-NodeGrp.id}"
}
