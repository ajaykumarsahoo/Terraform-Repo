provider "aws" {
  region = "ap-south-1"
  access_key = "xxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxx"
}

resource "aws_instance" "myec2" {
  ami = "ami-0a23ccb2cdd9286bb"
  instance_type = "t2.micro"
} 
