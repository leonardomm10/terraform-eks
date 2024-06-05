output "cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "eks_oidc_arn" {
  value = aws_iam_openid_connect_provider.eks_oidc.arn
}

output "eks_oidc_url" {
  value = aws_iam_openid_connect_provider.eks_oidc.url
}