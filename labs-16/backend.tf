terraform {
  backend "s3" {
    bucket = "terraform-backend-julien"
    key    = "remotedemo.tfstate"
    region     = "eu-central-1"
    shared_credentials_file = "../credentials"
    dynamodb_table = "s3-state-lock"
  }
}
