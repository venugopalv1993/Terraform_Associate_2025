resource "aws_instance" "name" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = var.Environment == "Production" && var.region == "us-east-1" ? "t2.micro" : "t2.small"
}


variable "Environment" {
  default = "Production"
  
}

variable "region" {
  default = "us-east-1"
}

