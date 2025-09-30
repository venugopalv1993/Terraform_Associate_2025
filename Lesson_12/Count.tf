resource "aws_instance" "name" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = "t2.micro"
  count = 3
}

# This should fail - Only one user should get created
resource "aws_iam_user" "name" {
  name               = "example-user"
  count              = 3
}

