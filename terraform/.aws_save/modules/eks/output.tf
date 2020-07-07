output "eks_name" {
  value = var.eks_name
}

output "endpoint" {
  value = "${aws_eks_cluster.excercise.endpoint}"
}

output "kubeconfig-certificate-authority-data" {
  value = "${aws_eks_cluster.excercise.certificate_authority.0.data}"
}