resource "aws_glue_catalog_database" "glue_catalog_database" {
  name = var.catalog_database_name
}

resource "aws_glue_connection" "glue_connection_thisDB" {
  name = "prd-thisDB"

  connection_properties = {
    JDBC_CONNECTION_URL = "jdbc:mysql://aws_rds_cluster.example.endpoint/exampledatabase"
    PASSWORD            = "examplepassword"
    USERNAME            = "exampleusername"
  }

  connection_type = "JDBC"

  physical_connection_requirements {
    availability_zone      = var.availability_zone
    security_group_id_list = var.security_group_id_list
    subnet_id              = var.subnet_id
  }
}

resource "aws_cloudwatch_log_group" "cloud_watch_glue" {
  name              = "glue_cloud_watch"
  retention_in_days = 14
}

resource "aws_glue_job" "example" {
  name     = "inl_glue_job_test"
  role_arn = "arn:aws:iam::621693658703:role/TEST-DEVOPS"

  command {
    name            = "glueetl"
    script_location = "s3://aws_s3_bucket.example.bucket/example.py"
  }

  worker_type       = "G.1X"
  number_of_workers = "2"
  timeout           = "1800"

  default_arguments = {
    "--job-language"                     = "spark"
    "--continuous-log-logGroup"          = aws_cloudwatch_log_group.cloud_watch_glue.name
    "--enable-continuous-cloudwatch-log" = "true"
    "--enable-continuous-log-filter"     = "true"
    "--enable-metrics"                   = ""
  }
}
