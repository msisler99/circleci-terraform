terraform {
  backend "s3" {
    bucket = "ttg-tf-test-bucket"
    dynamodb_table = "terraform-state-lock-dev"
    key    = "${CIRCLE_PROJECT_REPONAME}"
    region =  "us-west-2"
  }
}
