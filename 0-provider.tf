# Define global configuration for Terraform 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.42" # Limit the provider version 
    }
  }
  required_version = ">= 1.2.0" # min version of terraform requried to apply this configuration
}

provider "aws" {
  region  = "us-east-1"
  profile = "Jamf-Sandbox.AdministratorAccess"
}
