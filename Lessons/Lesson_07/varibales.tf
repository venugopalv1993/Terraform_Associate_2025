variable "cidr_ipv4" {
  description = "The CIDR block for the VPC"
  default     = "0.0.0.0/0"
}

variable "from_port" {
  description = "The starting port for the security group rule"
  default     = 80
}