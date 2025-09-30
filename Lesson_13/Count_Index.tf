resource "aws_instance" "name" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = "t2.micro"
  count = 3

  tags = {
    Name = "example-instance-${count.index}"
  }
}


resource "aws_iam_user" "name" {
  count              = 3
  name               = "example-user-${count.index}"

}

variable "user_name"  {
  type = list
  default = ["ram", "ravi", "roy"]
}


resource "aws_iam_user" "dev" {
  count              = 3
  name               = var.user_name[count.index]

}

