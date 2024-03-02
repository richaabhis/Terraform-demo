terraform {
  backend "s3" {
    bucket = "final-terraform-project"
    key    = "three-tier-architecture-bucket/terraform.tfstate"
    region = "us-east-1"
    aws_dynamodb_table = "terraform-lock"
  }
}