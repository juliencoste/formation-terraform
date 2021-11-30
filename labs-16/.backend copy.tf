terraform {
  backend "s3" {
    bucket = "terraform-backend-julien"
    key    = "remotedemo.tfstate"
    region     = "eu-central-1"
    access_key = "PUT YOUR OWN"
    secret_key = "PUT YOUR OWN"
    dynamodb_table = "s3-state-lock"
  }
}
