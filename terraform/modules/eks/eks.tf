resource "aws_eks_cluster" "eks" {
  name     = "${var.project_name}-eks"
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = var.public_subnets_id

    endpoint_private_access = true
    endpoint_public_access  = true
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_role_attachment
  ]

  tags = var.tags
}