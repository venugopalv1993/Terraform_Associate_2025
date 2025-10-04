resource "aws_instance" "name" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = file("../Lesson_15_Terraform_Function/test.txt")
}

