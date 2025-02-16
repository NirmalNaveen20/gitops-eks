# Setting and locking the Dependencies to specific versions
terraform {
  required_providers {

    # AWS Cloud Provider
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.83"
    }

    # TLS provider to generate SSH Keys
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.0"
    }

    # Provider to generate random numbers
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }

    # Provider to interact with the local system
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }

    # Provider to interact with kubernetes clusters
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.35.0"
    }

  }
  # Setting the Terraform version
  required_version = ">= 0.12.19"
}

# Feeding the AWS providers with the data it needs
provider "aws" {
  # Set the default region
  region = var.region
}