provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count = 2
  ami           = "ami-0ed094fb1304fd857"
  instance_type = "t3.micro" 
  tags = {
    Name = "dev-server-gab"
  }
}
