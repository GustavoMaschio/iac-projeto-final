terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  key_name = "projeto-final-gustavo"
  tags = {
    Name = "Primeira instância-gustavo"
  }
}
