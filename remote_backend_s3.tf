terraform {
  backend "s3" {
    bucket = "bkoduri-terraform-remote-backend-007"
    key    = "sillygully/jenkins/terraform.tfstate"
    region = "us-west-2"
  }
}