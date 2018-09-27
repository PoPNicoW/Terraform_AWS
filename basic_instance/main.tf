provider "aws" {}

resource "aws_instance" "MyFistInstance" {
  ami		= "ami-06340c8c12baa6a09"
  instance_type = "t2.micro"

  tags {
    Name = "Terra-01"
       }
}

