resource "aws_instance" "name" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = "t2.micro"
  tags          = local.tags
}


locals {
  tags = {
    Name = "MyInstance"
    Environment = "Production"
    region = "us-east-1"
  }
}