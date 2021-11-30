
resource "aws_instance" "myec2" {
  ami           = "ami-047e03b8591f2d48a"
#  instance_type = var.list[2]
  instance_type = var.types["eu-central-1a"] 
}

variable "list" {
  type = list
  default = ["m5.large","m5.xlarge","t2.medium"]
}

variable "types" {
  type = map
  default = {
    eu-central-1a = "t2.micro"
	  eu-central-1b = "t2.nano"
	  eu-central-1c = "t2.small"
  }
}
