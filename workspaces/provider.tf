terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "devopspractice-aadarsh"
    key    = "workspace"
    region = "us-east-1"
    dynamodb_table = "aadarsh-remote"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}