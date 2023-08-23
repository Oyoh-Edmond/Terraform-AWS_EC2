terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.13.1"
    }
    tls = {
        source  = "hashicorp/tls"
        version = "4.0.4"
    }
    local = {
        source = "hashicorp/local"
        version = "2.4.0"
    }
  } 
}

provider "aws" {
  region = "us-east-1"
}

resource "tls_private_key" "rsa-4096" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


variable "key_name" {
    default = "test"   
}

resource "aws_key_pair" "key_pair" {
  key_name   = var.key_name 
  public_key = tls_private_key.rsa-4096.public_key_openssh
}

resource "local_file" "private_key" {
    content = tls_private_key.rsa-4096.private_key_pem
    filename = var.key_name
}

resource "aws_instance" "public_instance" {
  count         = 4
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t3.micro"
  key_name = aws_key_pair.key_pair.key_name

  tags = {
    Name = "public_name"
  }
}

