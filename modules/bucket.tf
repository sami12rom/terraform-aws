resource "aws_s3_bucket" "acc-landing-dc1-bucket" {
  bucket = var.s3_bucket_name
  acl    = try(var.acl_value, false)
}
