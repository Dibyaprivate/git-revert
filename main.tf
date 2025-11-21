terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_server" {
  ami           = "ami-0fa3fe0fa7920f68e"   # Amazon Linux 2 AMI example
  instance_type = "t2.micro"
  key_name      = "banty"

  tags = {
    Name = "Terraform-EC2"
  }
}
