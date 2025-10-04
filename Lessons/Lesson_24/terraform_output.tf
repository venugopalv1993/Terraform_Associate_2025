resource "aws_iam_user" "user1" {

    count = 3
    name = "user${count.index}"

}

output "name" {
  value = aws_iam_user.user1.*.arn
}