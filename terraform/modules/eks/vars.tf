variable "eks_name" {
  description = "The name of the EKS cluster"
  default = ""
}

variable "subnet_ids" {
  type = list(string)
  description = "The list of IDs of the subnets"
}
