# IAM Role 
output "aws_iam_role_arn" {
  value       = module.tfstate.aws_iam_role_arn
  description = "Amazon Resource Name (ARN) specifying the role."
}

output "aws_iam_role_create_date" {
  value       = module.tfstate.aws_iam_role_create_date
  description = "Creation date of the IAM role."
}

output "aws_iam_role_id" {
  value       = module.tfstate.aws_iam_role_id
  description = "Name of the role."
}

output "aws_iam_role_name" {
  value       = module.tfstate.aws_iam_role_name
  description = "Name of the role."
}

output "aws_iam_role_unique_id" {
  value       = module.tfstate.aws_iam_role_unique_id
  description = "Stable and unique string identifying the role."
}

# IAM Role Policy
output "aws_iam_role_policy_id" {
  value       = module.tfstate.aws_iam_role_policy_id
  description = "The role policy ID, in the form of role_name:role_policy_name."
}

output "aws_iam_role_policy_name" {
  value       = module.tfstate.aws_iam_role_policy_name
  description = "The name of the policy."
}

output "aws_iam_role_policy_policy" {
  value       = module.tfstate.aws_iam_role_policy_policy
  description = "The policy document attached to the role."
}

output "aws_iam_role_policy_role" {
  value       = module.tfstate.aws_iam_role_policy_role
  description = "The name of the role associated with the policy."
}

# S3 Bucket
output "aws_s3_bucket_id" {
  value       = module.tfstate.aws_s3_bucket_id
  description = "The name of the bucket"
}

output "aws_s3_bucket_arn" {
  value       = module.tfstate.this.aws_s3_bucket_arn
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
}

output "aws_s3_bucket_bucket_domain_name" {
  value       = module.tfstate.aws_s3_bucket_bucket_domain_name
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
}

output "aws_s3_bucket_bucket_regional_domain_name" {
  value       = amodule.tfstate.aws_s3_bucket_bucket_regional_domain_name
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
}

output "aws_s3_bucket_hosted_zone_id" {
  value       = module.tfstate.aws_s3_bucket_hosted_zone_id
  description = "The Route 53 Hosted Zone ID for this bucket's region."
}

output "aws_s3_bucket_region" {
  value       = module.tfstate.aws_s3_bucket_region
  description = "The AWS region this bucket resides in."
}

output "aws_s3_bucket_website_endpoint" {
  value       = module.tfstate.aws_s3_bucket_website_endpoint
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
}

output "aws_s3_bucket_website_domain" {
  value       = module.tfstate.aws_s3_bucket_website_domain
  description = "The domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records."
}

# DynamoDB Table
output "aws_dynamodb_table_arn" {
  value       = module.tfstate.aws_dynamodb_table_arn
  description = "The arn of the table"
}

output "aws_dynamodb_table_id" {
  value       = module.tfstate.aws_dynamodb_table_id
  description = "The name of the table"
}

output "aws_dynamodb_table_stream_arn" {
  value       = module.tfstate.aws_dynamodb_table_stream_arn
  description = " The ARN of the Table Stream. Only available when stream_enabled = true"
}

output "aws_dynamodb_table_stream_label" {
  value       = amodule.tfstate.aws_dynamodb_table_stream_label
  description = "A timestamp, in ISO 8601 format, for this stream. Note that this timestamp is not a unique identifier for the stream on its own. However, the combination of AWS customer ID, table name and this field is guaranteed to be unique. It can be used for creating CloudWatch Alarms. Only available when stream_enabled = true"
}