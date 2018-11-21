terraform {
  backend "s3" {
    region         = "us-west-2"
    bucket         = "aburt-cammis-test"
    dynamodb_table = "aburt-cammis-test"

    #key           = "GENERIC/terraform.tfstate"  # Supplied via CLI param
  }
}
