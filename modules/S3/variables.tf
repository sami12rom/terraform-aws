variable "bucket_name" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = string
}

variable "acl" {
  description = "Provides an S3 bucket ACL resource"
  type        = string
  default     = "private"
}

variable "versioning" {
  description = "Controlling versioning on an S3 bucket"
  type        = string
  default     = "Enabled"
}
