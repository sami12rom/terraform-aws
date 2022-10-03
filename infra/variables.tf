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
    Hashicorp-Learn    = "aws-terraform"
    Owner              = "cloud"
    ManagedBy          = ""
    DataClassification = "dc3"
    Environment        = "Test"
    Domain             = ""
  }
}

variable "lambda_role_arn" {
  description = "The AWS region to create things in."
  type        = string
  default     = "value"
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
