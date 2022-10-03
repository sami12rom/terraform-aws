# Specify the provider and access details
provider "aws" {
  profile = var.profile
  region  = var.aws_region

  default_tags {
    tags = var.aws_tags
  }
}
/*
module "s3_bucket" {
  source      = "../modules/S3"
  bucket_name = "inl-acc-trial3"
}*/


module "aws_glue" {
  source                = "../modules/glue"
  catalog_database_name = "trial"

}
