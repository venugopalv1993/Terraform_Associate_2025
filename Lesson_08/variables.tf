variable "ami" {
  description = "The AMI ID to use for the instance"
  default     = "ami-12345678"
}

variable "instance_type" {
  description = "The instance type to use for the instance"
  default     = "t2.micro"
}