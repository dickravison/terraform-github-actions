resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "test"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "UserId"
  range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }
}