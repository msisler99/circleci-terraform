terraform {
  backend "s3" {
    bucket         = "aburt-cammis-test"
    dynamodb_table = "aburt-cammis-test"
    key            = "GENERIC/terraform.tfstate"
    region         = "us-west-2"
  }
}
