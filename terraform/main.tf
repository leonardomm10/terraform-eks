module "vpc" {
  source              = "./modules/vpc"
  vpc_name            = var.aws_vpc_name
  vpc_cidr            = var.aws_vpc_cidr
  vpc_azs             = var.aws_vpc_azs
  vpc_public_subnets  = var.aws_vpc_public_subnets
  vpc_private_subnets = var.aws_vpc_private_subnets
  project_name        = var.project_name
  tags                = var.aws_project_tags
}