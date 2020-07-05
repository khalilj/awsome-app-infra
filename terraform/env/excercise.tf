provider "aws" {
    profile = "default"
    region = var.region
}

# module "name" {
#   source = "../modules/name"
# }

module "network" {
  source = "../modules/network"
  vpc_name = var.vpc_name
  vpc_cidr_block = var.vpc_cidr_block
  subnet_az = var.subnet_az
}

module "eks" {
  source = "../modules/eks"
  eks_name = var.eks_name
  subnet_ids = module.network.subnet_ids
}