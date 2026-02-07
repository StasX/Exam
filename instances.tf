resource "aws_instance" "exam_instance" {
  ami                         = "ami-0801976e993cd4ddf"
  instance_type               = "t2-micro"
  security_groups = [ aws_security_group.exam_sg ]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  tags = {
    "Name"    = "Exam Machine"
    "Created" = "Terraform"
  }
}
