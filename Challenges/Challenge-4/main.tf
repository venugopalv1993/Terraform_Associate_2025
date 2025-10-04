

data "aws_iam_users" "users" {}

output "name" {
  value = data.aws_iam_users.users.names
}

output "number_of_users" {
  value = length(data.aws_iam_users.users.names)
}


data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

resource "aws_iam_user" "name" {
    for_each = toset(data.aws_iam_users.users.names)
    name     = "Venu-${each.value}-${data.aws_caller_identity.current.account_id}"
}
