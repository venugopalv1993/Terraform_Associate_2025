resource "aws_instance" "name" {
  ami           = "ami29e8qw09438"
  instance_type = var.instance_type
  security_groups = var.security_groups
  tags = var.tags
}


variable "instance_type" {
  description = "The instance type"
  default     = "t2.micro"
}

variable "security_groups" {
  description = "The security groups to associate with the instance"
  default     = ["sg-12345678"]
}

variable "tags" {
  description = "The tags to assign to the instance"
  default     = {
    Name        = "example-instance"
    Environment = "dev"
  }
}

