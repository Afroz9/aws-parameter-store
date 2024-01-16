terraform {
  backend "s3" {
    bucket = "terraform-1992"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}