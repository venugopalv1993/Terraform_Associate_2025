# Local Execution

resource "aws_instance" "sample" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ip_address.txt"
    
  }

}

# Remote Execution
resource "aws_instance" "example" {
  ami           = "ami-0360c520857e3138f" # Replace with a valid AMI
  instance_type = "t2.micro"
  key_name      = "terraform_learning" # Replace with your SSH key pair name

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu" # Or appropriate user for your AMI
      private_key = file("./terraform_learning.pem") # Path to your private key
      host        = self.public_ip
    }
  }
}


# Creationtime and destroy time execution

resource "aws_iam_user" "provisioner_user" {
  name = "provisioner_user"

  provisioner "local-exec" {
    command = "echo running create"
  }

  provisioner "local-exec" {
    command = "echo running destroy"
    when = destroy
  }
}