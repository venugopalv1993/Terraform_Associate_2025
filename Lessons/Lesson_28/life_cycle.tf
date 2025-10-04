# Meta Arguments: Lifecycle


#Ignore Changes
resource "aws_instance" "name" {
    ami           = "ami-0b09ffb6d8b58ca91"
    instance_type = "t2.micro"
    tags = {
      Name = "MyInstanceFirst"
      Environment = "Dev"
    }
   
    lifecycle {
      ignore_changes = [ 
        tags
       ]
    }
}

#Create before destroy

resource "aws_instance" "name" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}

#prevent destroy

resource "aws_instance" "name" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = "t2.micro"

  lifecycle {
    prevent_destroy = true
  }
}