/*
output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = try(module.s3_bucket.s3_bucket_id, "")
}

output "s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = try(module.s3_bucket.s3_bucket_arn, "")
}

output "s3_bucket_bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = try(module.s3_bucket.s3_bucket_bucket_domain_name, "")
}

output "s3_bucket_region" {
  description = "The AWS region this bucket resides in."
  value       = try(module.s3_bucket.s3_bucket_region, "")
}
*/
