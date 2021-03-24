# IAM Role
resource "aws_iam_role" "this" {
  # description
  # force_detach_policies
  # inline_policy
  # managed_policy_arns
  # max_session_duration
  name = var.aws_iam_role_name
  # name_prefix
  # path
  # permissions_boundary
  tags = {
    Name           = var.aws_iam_role_name
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${var.aws_account}:root"
      },
      "Action": "sts:AssumeRole",
      "Condition": {}
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "this" {
  name = var.aws_iam_role_policy_name
  role = aws_iam_role.this.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}

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