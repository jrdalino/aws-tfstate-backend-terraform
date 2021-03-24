# General
variable "aws_region" {
  type        = string
  description = "AWS Region."
}

variable "aws_account" {
  type        = string
  description = "AWS Account."
}

variable "aws_role" {
  type        = string
  description = "Used AWS Role."
}

# Tagging
variable "namespace" {
  type        = string
  description = "Namespace."
}

variable "bounded_context" {
  type        = string
  description = "Bounded Context."
}

variable "environment" {
  type        = string
  description = "Environment."
}

# IAM Role
variable "aws_iam_role_name" {
  type        = string
  description = "IAM Role Name"
}

variable "aws_iam_role_policy_name" {
  type        = string
  description = "IAM Role Policy Name"
}

# S3 Bucket
variable "aws_s3_bucket_bucket" {
  type        = string
  description = "(Optional, Forces new resource) The name of the bucket. If omitted, Terraform will assign a random, unique name."
}

# DynamoDB Table
variable "aws_dynamodb_table_name" {
  type        = string
  description = "The name of the table, this needs to be unique within a region."
}

variable "aws_dynamodb_table_hash_key" {
  type        = string
  description = "(Required, Forces new resource) The attribute to use as the hash (partition) key. Must also be defined as an attribute, see below."
}

variable "aws_dynamodb_table_read_capacity" {
  type        = string
  description = "(Optional) The number of read units for this table. If the billing_mode is PROVISIONED, this field is required."
}

variable "aws_dynamodb_table_write_capacity" {
  type        = string
  description = "(Optional) The number of write units for this table. If the billing_mode is PROVISIONED, this field is required."
}