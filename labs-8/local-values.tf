#provider "aws" {
#  region     = "us-east-1"
#  access_key = "PUT YOUR OWN"
#  secret_key = "PUT YOUR OWN"
#}

locals {
  common_tags = {
    Owner   = "julien"
    service = "Backend"
  }
}

resource "aws_instance" "app-dev" {
  ami           = "ami-047e03b8591f2d48a"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_instance" "db-dev" {
  ami           = "ami-047e03b8591f2d48a"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_ebs_volume" "db-ebs" {
  availability_zone = "eu-central-1a"
  size              = 8
  tags              = local.common_tags
}
