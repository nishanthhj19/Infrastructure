data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket = "karunaadu-infra-statefile-backup"
    key    = "karunaadu/1-network/terraform.tfstate"
    region = "us-east-1"
  }
}
