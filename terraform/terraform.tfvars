project_name = "cluster"

aws_region = "us-east-1"

aws_vpc_cidr            = "10.0.0.0/16"
aws_vpc_azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
aws_vpc_private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
aws_vpc_public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
# aws_vpc_cidr            = "10.1.0.0/16"
# aws_vpc_azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
# aws_vpc_private_subnets = ["10.1.0.0/20", "10.1.16.0/20", "10.1.32.0/20"]
# aws_vpc_public_subnets  = ["10.1.48.0/20", "10.1.64.0/20", "10.1.80.0/20"]

aws_eks_version                            = "1.29"
aws_eks_managed_node_groups_instance_types = ["t3.medium"]

aws_cluster_autoscaler_service_account = "cluster-autoscaler-aws"
aws_ebs_service_account                = "ebs-csi-controller-sa"
aws_efs_name                           = "devops-efs"
aws_efs_service_account                = "efs-csi-controller-sa"
aws_efs_image_repository               = "602401143452.dkr.ecr.eu-west-3.amazonaws.com/eks/aws-efs-csi-driver"

aws_project_tags = {
  Terraform   = "true"
  Environment = "staging"
  Project     = "devops"
}