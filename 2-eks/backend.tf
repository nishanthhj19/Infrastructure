terraform {
  backend "s3" {
    bucket         = "karunaadu-infra-statefile-backup"
    key            = "karunaadu/2-eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "karunaadu-terraform-locks"
    encrypt        = true
  }
}