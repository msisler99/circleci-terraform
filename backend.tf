terraform {
  backend "s3" {
    bucket         = "aburt-cammis-test"
    dynamodb_table = "aburt-cammis-test"
#   key            = "${var.state_path}/terraform.tfstate"  # Supplied to "terraform init" command
    region         = "us-west-2"
  }
}
