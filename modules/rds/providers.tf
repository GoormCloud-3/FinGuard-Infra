terraform {
  required_version = ">= 1.7.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.50"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      Project = var.project_name
      Env     = var.env
    }
  }
}