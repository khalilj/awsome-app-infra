provider "google" {
  credentials = file(var.cred_path)
  project = var.project_id
  region  = var.region
}

module "network" {
  source = "../modules/network"
  vpc_name = var.vpc_name
  subnet_cidr_block = var.subnet_cidr_block
}

module "gke" {
  source = "../modules/gke"
  cluster_name = var.cluster_name
  region  = var.region
}