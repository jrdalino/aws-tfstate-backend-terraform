# S3 Bucket
resource "aws_s3_bucket" "this" {
  bucket = var.aws_s3_bucket_bucket
  acl    = "private"

  # Versioning
  versioning {
    enabled = true
  }

  # Tagging
  tags = {
    Name           = var.aws_s3_bucket_bucket
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }
}

# DynamoDB Table
resource "aws_dynamodb_table" "this" {
  name           = var.aws_dynamodb_table_name
  hash_key       = var.aws_dynamodb_table_hash_key
  read_capacity  = var.aws_dynamodb_table_read_capacity
  write_capacity = var.aws_dynamodb_table_write_capacity

  attribute {
    name = var.aws_dynamodb_table_hash_key
    type = "S"
  }

  # Tagging
  tags = {
    Name           = var.aws_dynamodb_table_name
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }
}