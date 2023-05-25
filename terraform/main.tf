provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "wmolina"
    key    = "terraform/terraform.tfstate"
  }
}

resource "aws_ssm_parameter" "example" {
  name  = "/myapp/database/password"
  type  = "SecureString"
  value = "secretpassword"
}

