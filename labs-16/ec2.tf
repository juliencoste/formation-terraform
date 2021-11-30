resource "aws_instance" "myec2" {
  ami           = "ami-047e03b8591f2d48a"
  instance_type = "t2.micro"
  key_name      = "SSH-test-jc"
  tags = {
    Name = "ec2-julien"
  }
}
