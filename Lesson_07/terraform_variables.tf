resource "aws_security_group" "example" {
  name        = "example"
  description = "Example security group"
}

resource "aws_vpc_security_group_ingress_rule" "example" {
    security_group_id = aws_security_group.example.id
    cidr_ipv4         = var.cidr_ipv4
    from_port         = var.from_port
    ip_protocol       = "tcp"
    to_port           = var.from_port
}
