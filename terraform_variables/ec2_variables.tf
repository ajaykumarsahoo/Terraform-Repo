provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA2KMYS3UXFRD4YS4R"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami = "ami-0c2d06d50ce30b442"
  instance_type = var.instancetype
}
