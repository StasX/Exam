resource "aws_vpc" "exam_vpc" {
  cidr_block = var.cidr_block
  tags = {
    "Name" = "Exam VPC"
    "Created"="terraform"
  }
}

