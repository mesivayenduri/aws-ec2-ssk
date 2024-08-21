terraform {
  required_providers {
    aws = {
      version = ">=5.61.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  tags          = local.tags
}
