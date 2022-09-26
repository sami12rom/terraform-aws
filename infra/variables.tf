variable "aws_region" {
  description = "The AWS region used."
  type        = string
  default     = "eu-central-1"
}

variable "profile" {
  description = "The AWS region to create things in."
  type        = string
}

variable "aws_tags" {
  type = map(any)
  default = {
    Hashicorp-Learn = "aws-iam-policy"
  }
}

variable "lambda_role_arn" {
  description = "The AWS region to create things in."
  type        = string
  default     = "value"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
  default     = "acc-landing-dc1-bucket"
}

variable "aws_subnets" {
  description = "The VPC subnets"
  type        = list(any)
  default     = []
}

variable "aws_security_group" {
  description = "The aws_security_group"
  type        = list(any)
  default     = []
}
