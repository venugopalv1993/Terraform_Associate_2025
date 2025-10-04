#Zip map function
# https://developer.hashicorp.com/terraform/language/functions/zipmap


resource "aws_iam_user" "user1" {

    count = 3
    name = "user${count.index}"

}

output "arn" {
  value = aws_iam_user.user1.*.arn
}

output "name" {
    value = aws_iam_user.user1.*.name
}

output "zipmap" {
  value = zipmap(aws_iam_user.user1.*.name, aws_iam_user.user1.*.arn)
}