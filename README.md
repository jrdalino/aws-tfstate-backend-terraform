# Terraform module to provision an S3 Bucket to store Terraform state and DynamoDB for state-lock

## Replace variables in terraform.tfvars

## Initialize, Review Plan and Apply
```
$ terraform init
$ terraform fmt
$ terraform validate
$ terraform plan
$ terraform apply
```

## Then add a backend that uses the tfstate S3 bucket and DynamoDB table
```
$ vi state_config.tf
```
```
terraform {
  backend "s3" {
    region         = "ap-southeast-1"
    bucket         = "623552185285-ap-southeast-1-terraform-state"
    key            = "aws-REPLACEME-terraform.tfstate"
    encrypt        = "true"
    dynamodb_table = "terraform-state-lock"
  }
}
```

## Inputs
S3
| Name | Description |
|------|-------------|
| s3_bucket_name | S3 bucket name |
 
DynamoDB
| Name | Description |
|------|-------------|
| name | DynamoDB table name |
| hash_key | DynamoDB hash key |
| read_capacity | DynamoDB read capacity |
| write_capacity | DynamoDB write capacity |

## Outputs
S3
| Name | Description |
|------|-------------|
| id | The name of the bucket |
| arn | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname |
| bucket_domain_name | The bucket domain name. Will be of format bucketname.s3.amazonaws.com |

DynamoDB
| Name | Description |
|------|-------------|
| arn | The arn of the table |
| id | The id of the table |
| name | The name of the table |