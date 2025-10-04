# resource "aws_security_group" "allow_tls" {
#   name = "example_security_group"
#   vpc_id = "vpc-0d36b25b2975feda6"

#   dynamic "ingress" {
#     for_each = var.ingress_ports
#     content {
#         cidr_blocks      = ["0.0.0.0/0"]
#         from_port         = ingress.value
#         protocol       = "tcp"
#         to_port           = ingress.value           
#     }
#   }

# }

variable "ingress_ports" {
  type    = list(string)
  default = ["1001", "1003"]
}


# looks like dynamic blocks is deprecated


resource "aws_security_group" "allow_tls" {
  name   = "example_security_group"
}

resource "aws_security_group_rule" "ingress_rules" {
  for_each          = toset(var.ingress_ports)
  type              = "ingress"
  from_port         = each.value
  to_port           = each.value
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.allow_tls.id
}




# resource "aws_vpc_security_group_ingress_rule" "rule1" {
#   security_group_id = aws_security_group.allow_tls.id
#   cidr_ipv4         = "0.0.0.0/0"
#   from_port         = 1002
#   ip_protocol       = "tcp"
#   to_port           = 1002

# }

# resource "aws_vpc_security_group_ingress_rule" "rule2" {
#   security_group_id = aws_security_group.allow_tls.id
#   cidr_ipv4         = "0.0.0.0/0"
#   from_port         = 1001
#   ip_protocol       = "tcp"
#   to_port           = 1001
# }



# dynamic "ingress" {
#     for_each = var.ingress_ports
#     content {
#         security_group_id = aws_security_group.allow_tls.id
#         cidr_ipv4         = "0.0.0.0/0"
#         from_port         = ingress.value
#         ip_protocol       = "tcp"
#         to_port           = ingress.value
#     }
# }
