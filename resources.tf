# VPC
resource "aws_vpc" "exam_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    "Name"    = "Exam VPC"
    "Created" = "terraform"
  }
}
#-----------------------------------------------

# Subnets
resource "aws_subnet" "exam_private_subnet" {
  vpc_id     = aws_vpc.exam_vpc.id
  cidr_block = var.private_subnet_cidr
  tags = {
    "Name"    = "Private Subnet"
    "Created" = "terraform"
  }
}

resource "aws_subnet" "exam_public_subnet" {
  vpc_id                  = aws_vpc.exam_vpc.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    "Name"    = "Public Subnet"
    "Created" = "terraform"
  }
}
#-----------------------------------------------

# Internet Gateway
resource "aws_internet_gateway" "exam_ig" {
  vpc_id = aws_vpc.exam_vpc.id
  tags = {
    "Name"    = "Internet Gateway"
    "Created" = "terraform"
  }
}
#-----------------------------------------------

# Rouute Table
resource "aws_route_table" "exam_rt" {
  vpc_id = aws_vpc.exam_vpc.id

  route {
    cidr_block = var.route_table_cidr
    gateway_id = aws_internet_gateway.exam_ig.id
  }

  tags = {
    "Name"    = "Exam Route Table"
    "Created" = "terraform"
  }
}
