provider "aws" {
  region     = "us-west-2"
  access_key = "xxxxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxxx"
}

variable "elb_names" {
  type = list
  default = ["dev-loadbalancer", "stage-loadbalanacer","prod-loadbalancer"]
}

resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = 3
  path = "/system/"
}
/*
resource "aws_iam_user" "lb" {
  name = "loadbalancer.${count.index}"
  count = 3
  path = "/system/"
}
*/
