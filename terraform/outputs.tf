output "cluster_id" {
  description = "EKS cluster ID"
  value       = aws_eks_cluster.eks_cluster.id
}

output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_certificate_authority_data" {
  description = "EKS cluster CA data"
  value       = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

output "node_group_id" {
  description = "EKS node group ID"
  value       = aws_eks_node_group.eks_node_group.id
}
