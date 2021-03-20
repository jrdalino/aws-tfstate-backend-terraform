# General
aws_region  = "ap-southeast-1"
aws_account = "623552185285"
aws_role    = "OrganizationAccountAccessRole"

# Tagging
namespace       = "bbsdm"
bounded_context = "shared"
environment     = "production"

# S3 Bucket
aws_s3_bucket_bucket = "623552185285-ap-southeast-1-terraform-state"

# DynamoDB Table
aws_dynamodb_table_name           = "terraform-state-lock"
aws_dynamodb_table_hash_key       = "LockID" # https://www.terraform.io/docs/backends/types/s3.html#dynamodb_table
aws_dynamodb_table_read_capacity  = "1"
aws_dynamodb_table_write_capacity = "1"