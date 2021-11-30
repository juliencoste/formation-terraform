#resource "aws_instance" "myec2" {
#  ami           = "ami-047e03b8591f2d48a"
#  instance_type = "t2.micro"
#  key_name      = "SSH-test-jc"
#  tags = {
#    Name = "ec2-julien"
#  }
#}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket              = "my-s3-bucket-jc"
#  block_public_acls       = true
#  block_public_policy     = true
#  ignore_public_acls      = true
#  restrict_public_buckets = true
  force_destroy = true
  acl    = "public-read"
}

#output "instance_ip_addr" {
#  value = aws_instance.myec2.private_ip
#}

output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = module.s3_bucket.s3_bucket_id
}

output "s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = module.s3_bucket.s3_bucket_arn
}

output "s3_bucket_bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = module.s3_bucket.s3_bucket_bucket_domain_name
}