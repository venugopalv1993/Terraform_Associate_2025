
# Using Count

# resource "aws_iam_user" "name" {
#   name = var.aws_iam_user[count.index]
#   count = 3
# }


resource "aws_iam_user" "name" {
  for_each = (var.aws_iam_user)
  name     = each.value
}


variable "aws_iam_user" {
  type = set(string)
  default = ["user1", "user2", "user3"]
}

