variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-2"
}

#variable "aws_account_id" {
#  description = "AWS account ID"
#}

variable "AMI_Id" {
  description = "AMI Id to use when creating an EC2 instance"
  default     = "ami id here"
}

variable "EC2_instance_type" {
  description = "Instance type to use when creating the EC2 instance"
  default     = "t2-micro"
}

variable "S3_bucket_name" {
  description = "S3 bucket name for storing remote Terraform state file"
  default     = "ttg-tf-test-bucket"
}

variable "remote_state_file" {
  description = "Name of Terraform remote state file stored in ?S3 bucket"
  default     = "terraform.tfstate"
}

variable "dynamodb_table_name" {
  description = "DynamoDb table name setup for locking S3 bucket remote state file"
  default     = "terraform-state-lock-dev"
}
