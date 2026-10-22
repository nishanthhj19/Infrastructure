terraform {
  backend "s3" {
    bucket         = "karunaadu-infra-statefile-backup"
    key            = "karunaadu/1-network/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "karunaadu-terraform-locks"
    encrypt        = true
  }
}