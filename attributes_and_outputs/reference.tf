provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA2KMYS3UXFRD4YS4R"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami = "ami-0c2d06d50ce30b442"      #ami will be region spedified- ami for west-2
  instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  vpc      = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.myec2.id
  allocation_id = aws_eip.lb.id
}


resource "aws_security_group" "allow_tls" {
  name        = "kplabs-security-group"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]

#    cidr_blocks = [aws_eip.lb.public_ip/32]
  }
}
