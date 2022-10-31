provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA2KMYS3UXFRD4YS4R"
  secret_key = "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"
}

variable "istest" {}

resource "aws_instance" "dev" {
   ami = "ami-0c2d06d50ce30b442"
   instance_type = "t2.micro"
   count = var.istest == true ? 3 : 0
}

resource "aws_instance" "prod" {
   ami = "ami-0c2d06d50ce30b442"
   instance_type = "t2.large"
   count = var.istest == false ? 1 : 0
}
