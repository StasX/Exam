# access variables
variable "AWS_ACCESS_KEY" {
  type      = string
  sensitive = true
}
variable "AWS_SECRET_ACCESS_KEY" {
  type      = string
  sensitive = true
}
variable "region" {
  type    = string
  default = "us-east-1"
}

# networking variables
variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}
variable "private_subnet_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "route_table_cidr" {
  type    = string
  default = "0.0.0.0/0"
}
