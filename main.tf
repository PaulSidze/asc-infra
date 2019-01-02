terraform {
  required_version = ">= 0.10.2" # introduction of Local Values configuration language feature
}


// Configure AWS provider

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-2"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "asc"
  }
}
