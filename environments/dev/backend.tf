terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.100.0"
    }
  }
  terraform {
  backend "s3" {
    bucket = "sundayproject26072025"
    key    = "environments/dev/terraform.tfstate"
    region = "us-east-1"
  }
}
}

provider "aws" {
  region="ap-sountheast-1"
}