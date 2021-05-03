terraform {
  required_version = ">= 0.15"
}

provider "aws" {
  region = var.region
}

data "aws_caller_identity" "current" {}
