provider "aws" {
  region     = "us-west-2"
  access_key = "xxxxxxxxxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxxxxx"
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
