terraform {
  backend "s3" {
    bucket = "${var.S3_bucket_name}"
    dynamodb_table = "${var.dynamodb_table_name}"
    key    = "${var.remote_state_file}"
    region = "${var.aws_region]"
  }
}
