terraform {
  backend "s3" {
    bucket         = "replace-me-bucket"
    region         = "replace-me-region"
    key            = "replace-me-key"
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