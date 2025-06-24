terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket         = "infra-dev-5557"
    key            = "expense-vpc"
    region         = "us-east-1"
    dynamodb_table = "infra-dev"
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}