terraform {
  backend "remote" {
    organization = "tu-organizacion-en-terraform-cloud"

    workspaces {
      name = "tu-workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (Free Tier)
  instance_type = "t2.micro"

  tags = {
    Name = "GitHubActions-TerraformPOC"
  }
}
