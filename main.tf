terraform {
  required_version = "> 1.1.7"

  required_providers {
    aws = "~> 4.9"
  }

}

provider "aws" {
  default_tags {
    tags = {
      env = "serverless-todo-app"
    }
  }
}

data "aws_caller_identity" "self" {}
