variable "project_name" {
  description = "The name of the project"
  type        = string
  nullable    = false
}

variable "aws_region" {
  description = "The region where AWS resources will be created"
  type        = string
  nullable    = false
}

variable "aws_vpc_name" {
  description = "The name of the VPC to be created in AWS"
  type        = string
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "The availability zones for the VPC"
  type        = list(string)
  nullable    = false
}

variable "aws_vpc_private_subnets" {
  description = "The private subnets within the VPC"
  type        = list(string)
  nullable    = false
}

variable "aws_vpc_public_subnets" {
  description = "The public subnets within the VPC"
  type        = list(string)
  nullable    = false
}

variable "aws_eks_name" {
  description = "The name of the EKS cluster"
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "The version of the EKS cluster"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "The instance types for the EKS managed node groups"
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "Tags for the AWS project"
  type        = map(any)
  nullable    = false
}

variable "aws_cluster_autoscaler_service_account" {
  description = "The service account for the cluster autoscaler"
  type        = string
  nullable    = false
}

variable "aws_efs_name" {
  description = "The name of the EFS"
  type        = string
  nullable    = false
}

variable "aws_efs_service_account" {
  description = "The service account for EFS"
  type        = string
  nullable    = false
}

variable "aws_efs_image_repository" {
  description = "The image repository for EFS"
  type        = string
  nullable    = false
}

variable "aws_ebs_service_account" {
  description = "The service account for EBS"
  type        = string
  nullable    = false
}