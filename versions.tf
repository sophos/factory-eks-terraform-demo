terraform {
  backend "s3" {
    bucket         = "terraform-state-bravo"
    region         = "us-west-2"
    key            = "eks-cluster/terraform.tfstate"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.66.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.6.1"
    }
  }

  required_version = ">= 1.0.0"
}