provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA2KMYS3UXFRD4YS4R"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
   ami = "ami-0c2d06d50ce30b442"
   instance_type = var.types["us-west-2"]  #var.list [0]
}

variable "list" {
  type = list
  default = ["m5.large","m5.xlarge","t2.medium"]
}

variable "types" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t2.nano"
    ap-south-1 = "t2.small"
  }
}
