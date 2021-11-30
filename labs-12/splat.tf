#provider "aws" {
#  region     = "us-east-1"
#  access_key = "PUT YOUR OWN"
#  secret_key = "PUT YOUR OWN"
#}
resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}
