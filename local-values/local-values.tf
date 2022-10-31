provider "aws" {
  region     = "us-west-2"
  access_key = "xxxxxxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxxxxxxx"
}

locals {
  common_tags = {
    Owner = "DevOps Team"
    service = "backend"
  }
}
resource "aws_instance" "app-dev" {
   ami = "ami-0c2d06d50ce30b442"
   instance_type = "t2.micro"
   tags = local.common_tags
}

resource "aws_instance" "db-dev" {
   ami = "ami-0c2d06d50ce30b442"
   instance_type = "t2.small"
   tags = local.common_tags
}

resource "aws_ebs_volume" "db_ebs" {
  availability_zone = "us-west-2a"
  size              = 8
  tags = local.common_tags
}
