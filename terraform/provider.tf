terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.91.0"
    }
  }

  backend "s3" {
    bucket = "test-bucket-allaka"
    key = "testing"
    region = "us-east-1"
    dynamodb_table = "test_LockID"
    
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}