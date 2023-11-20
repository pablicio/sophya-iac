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
  region  = var.regiao_aws
  access_key                = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

 endpoints {
    s3 = "http://192.168.100.158:4566"
    ec2 = "http://192.168.100.158:4566"
    sns = "http://192.168.100.158:4566"
    dynamodb = "http://192.168.100.158:4566"
    iam = "http://192.168.100.158:4566"
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = var.instancia
  tags = {
    Name = "Terraform Ansible Python"
  }
}

# resource "aws_key_pair" "chaveSSH" {
#   key_name = var.chave
#   public_key = file("${var.chave}.pub")
# }

output "IP_publico" {
  value = aws_instance.app_server.public_ip
}