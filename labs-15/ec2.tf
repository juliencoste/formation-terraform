#provider "aws" {
#  region     = "us-east-1"
#  access_key = "PUT YOUR OWN"
#  secret_key = "PUT YOUR OWN"
#}

resource "aws_instance" "myec2" {
  ami           = "ami-047e03b8591f2d48a"
  instance_type = lookup(var.instance_type, terraform.workspace)
}

variable "instance_type" {
  type = map

  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prd     = "t2.large"
  }
}
