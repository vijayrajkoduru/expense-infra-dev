terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.99.0"
    }
  }

  backend "s3" {
    bucket         = "infra-dev-5557"
    key            = "app-alb"
    region         = "us-east-1"
    dynamodb_table = "infra-dev"
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}