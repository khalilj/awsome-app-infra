provider "aws" {
    profile = "default"
    region = var.region
}

module "name" {
  source = "./modules/name"
}

module "network" {
  source = "./modules/network"
  vpc_name = "${module.name.vpc_name}"
  cidr_block = var.cidr_block
}
