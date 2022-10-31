provider "aws" {
  region     = "us-west-2"
  access_key = "xxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxxxx"
}

resource "aws_instance" "myec2" {
  ami = "ami-0c2d06d50ce30b442"
  instance_type = var.instancetype
}
