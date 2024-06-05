module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = var.aws_vpc_cidr
  vpc_azs             = var.aws_vpc_azs
  vpc_public_subnets  = var.aws_vpc_public_subnets
  vpc_private_subnets = var.aws_vpc_private_subnets

  project_name = var.project_name
  tags         = var.aws_project_tags
}

module "eks" {
  source = "./modules/eks"

  public_subnets_id = module.vpc.public_subnets_id

  project_name = var.project_name
  tags         = var.aws_project_tags
}

module "addons" {
  source = "./modules/addons"

  cluster_name = module.eks.cluster_name
  eks_oidc_arn = module.eks.eks_oidc_arn
  eks_oidc_url = module.eks.eks_oidc_url

  project_name = var.project_name
  tags         = var.aws_project_tags

  depends_on = [module.eks]
}

module "node_group" {
  source = "./modules/node_group"

  private_subnets_id = module.vpc.private_subnets_id
  cluster_name       = module.eks.cluster_name

  project_name = var.project_name
  tags         = var.aws_project_tags

  depends_on = [module.eks, module.addons]
}