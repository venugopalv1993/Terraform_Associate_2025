#Create a security group in two diffrent regions

resource "aws_security_group" "sg_1_rule" {
  name = "SG_1"
  provider = aws.ohio
  
}

resource "aws_security_group" "sg_2_rule" {
  provider = aws.Oregon
  name = "SG_2"
}


provider "aws" {
  alias = "ohio"
  region = "us-east-2"
  profile   = "personal"
}

provider "aws" {
  alias = "Oregon"
  region = "us-west-2"
  profile   = "personal"
}

