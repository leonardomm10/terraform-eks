resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "${var.project_name}-eks-node-group"
  node_role_arn   = aws_iam_role.eks_mng_role.arn
  subnet_ids      = var.private_subnets_id

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  capacity_type  = "SPOT"
  instance_types = ["t3.medium"]

  depends_on = [
    aws_iam_role_policy_attachment.eks_mng_worker_role_attachment,
    aws_iam_role_policy_attachment.eks_mng_cni_role_attachment,
    aws_iam_role_policy_attachment.eks_mng_ecr_role_attachment,
  ]

  tags = var.tags
}