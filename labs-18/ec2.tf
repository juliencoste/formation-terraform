resource "aws_instance" "myec2" {
  ami           = "ami-030e490c34394591b"
  instance_type = "t2.micro"
  key_name      = "SSH-test-jc"
#  vpc_security_group_ids = ["sg-092cdb2a97277a861"]
#  subnet_id = "subnet-0c55a6105ffd76e10"
  tags = {
    Name = "terraform"
  }
}
