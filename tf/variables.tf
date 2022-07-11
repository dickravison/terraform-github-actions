variable "bucket_name" {
  type        = string
  description = "Name of the bucket"
}

variable "project_name" {
  type        = string
  description = "Name of this project"
}

variable "region" {
  type    = string
  default = "eu-west-1"
}