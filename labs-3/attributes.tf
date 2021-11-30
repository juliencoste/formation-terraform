
resource "aws_eip" "lb" {
  vpc = true
}

output "eip" {
  value = aws_eip.lb.id
}

resource "aws_s3_bucket" "mys3" {
  bucket = "julien34-bucket"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3
}
