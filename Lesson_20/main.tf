resource "aws_instance" "sample" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = "t2.micro"
}
