terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  
  backend "s3" {
    bucket         = "expense-project-1"
    key            = "source-vpn"
    region         = "us-east-1"
    dynamodb_table = "expense-project-dynamo"
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}