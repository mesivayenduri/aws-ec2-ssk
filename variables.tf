variable "ami" {
  type    = string
  default = "ami-0b72821e2f351e396"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

locals {
  tags = {
    "Name"          = "test-ec2"
    "Creation-Date" = formatdate("DD-MM-YYYY hh:mm:ss ZZZ", timestamp())
  }
}