resource "aws_vpc" "toluna" {
    cidr_block = var.cidr_block

    tags = {
        Name = var.vpc_name
    }
}