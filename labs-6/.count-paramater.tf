#provider "aws" {
#  region     = "us-east-1"
#  access_key = "PUT YOUR OWN"
#  secret_key = "PUT YOUR OWN"
#}

resource "aws_instance" "instance-1" {
   ami = "ami-047e03b8591f2d48a"
   instance_type = "t2.micro"
   count = 3
}
