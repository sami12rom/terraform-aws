variable "aws_region" {
  description = "The AWS region used."
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
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "aws_subnets" {
  description = "The VPC subnets"
  type        = list(any)
}

variable "aws_security_group" {
  description = "The aws_security_group"
  type        = list(any)
}
