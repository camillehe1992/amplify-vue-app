terraform {
  backend "s3" {}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.59.0"
    }
  }
  required_version = "~> 1.8.0"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile != "default" ? var.aws_profile : null # ONLY USED LOCALLY
}
