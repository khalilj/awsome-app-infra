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

variable "subnet_az" {
  type = list(string)
  description = "The name of the availability zones"
}

variable "eks_name" {
  description = "The name of the EKS cluster"
  default = ""
}