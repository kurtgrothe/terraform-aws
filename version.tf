# Terraform Block (Defines Terraform version and provider version constraints)
terraform {
  required_version = "~> 1.11.3"

  required_providers {
    aws = {
      source  = "registry.terraform.io/hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider Block (Configures the AWS provider)
provider "aws" {
  region = var.aws_region
  # access_key, secret_key, or profile are configured locally or via environment variables
}