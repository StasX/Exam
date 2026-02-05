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
variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

