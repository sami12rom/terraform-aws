variable "catalog_database_name" {
  type = string
}

variable "security_group_id_list" {
  type    = list(string)
  default = [""]
}

variable "subnet_id" {
  type    = string
  default = "subnet-006154654315"
}

variable "availability_zone" {
  type    = string
  default = "6454654654"
}
