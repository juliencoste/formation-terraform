#provider "aws" {
#  region     = "eu-central-1"
#  access_key = ""
#  secret_key = ""
#}

resource "aws_instance" "dev" {
   ami = "ami-047e03b8591f2d48a"
   instance_type = "t2.micro"
   count = var.istest == true ? 3 : 0
}

resource "aws_instance" "prod" {
   ami = "ami-047e03b8591f2d48a"
   instance_type = "t2.large"
   count = var.istest == false ? 1 : 0
}

variable "istest" {}
