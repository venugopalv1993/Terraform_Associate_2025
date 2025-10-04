
# Meta Arguments: depends on

# Create a s3 bucket before the ec2 instance

# Explicit dependency
resource "aws_s3_bucket" "name" {
  bucket = "my-unique-bucket-name"
}

resource "aws_instance" "name" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = "t2.micro"

  depends_on = [
    aws_s3_bucket.name
  ]
}

#implicit dependency

resource "aws_instance" "name" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.name.id]
}

resource "aws_security_group" "name" {
    name = "my-security-group"
  
}