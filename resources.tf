resource "aws_vpc" "exam_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    "Name" = "Exam VPC"
    "Created"="terraform"
  }
}

resource "aws_subnet" "exam_private_subnet" {
  vpc_id = aws_vpc.exam_vpc.id
  cidr_block = var.private_subnet_cidr
  tags = {
    "Name"="Private Subnet"
    "Created"="terraform"
  }
}

resource "aws_subnet" "exam_public_subnet" {
  vpc_id = aws_vpc.exam_vpc.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    "Name"="Public Subnet"
    "Created"="terraform"
  }
}
