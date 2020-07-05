variable "region" {
  description = "The region name on the cloud"
  default = ""
}

variable "vpc_name" {
  description = "The name of the VPC"
  default = ""
}

variable "vpc_cidr_block" {
  description = "The CIDR Block of the VPC"
  default = ""
}

variable "subnet_main_cidr_block" {
  description = "The CIDR Block of the Main Subnet"
  default = ""
}

variable "eks_name" {
  description = "The name of the EKS cluster"
  default = ""
}