terraform {
  backend "s3" {
    bucket = "terraformlearning-2025"
    key    = "terraform_state_file"
    region = "us-east-1"
  }
}
