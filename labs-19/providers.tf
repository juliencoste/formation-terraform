provider "aws" {
  region     = "eu-central-1"
  shared_credentials_file = "../credentials"
}

provider "aws" {
  alias      = "aws02"
  region     = "eu-west-1"
  shared_credentials_file = "../credentials"
}
