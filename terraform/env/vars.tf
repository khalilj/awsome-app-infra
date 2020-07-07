variable "project_id" {
  description = "Google project ID"
  default = ""
}

variable "cred_path" {
  description = "Google SA credential json"
  default = ""
}

variable "region" {
  description = "The region name on the cloud"
  default = ""
}

variable "vpc_name" {
  description = "The name of the VPC"
  default = ""
}

variable "subnet_cidr_block" {
  description = "The CIDR Block of the Subnet"
  default = "10.10.0.0/24"
}

variable "cluster_name" {
  description = "The GKE cluster name"
  default = ""
}