resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr_block

    tags = {
        Name = var.vpc_name
    }
}

resource "aws_subnet" "subnet" {
  count = length(var.subnet_az)
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.${count.index}.0/24"
  availability_zone = var.subnet_az[count.index]

  tags = var.subnet_tags
}