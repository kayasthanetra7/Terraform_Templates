# Simple AWS EC2 Terraform Example
# to test: run `terraform plan`
# to deploy: run `terraform apply`

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.32"
    }
  }
}

provider "aws" {
  profile = # user profile
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-00029868326438a09"
  instance_type = "t3.micro"

  tags = {
    Name = "ExampleInstance"
    Type = "Test"
  }

  hibernation = true

  root_block_device {
    encrypted = true
  }
}
