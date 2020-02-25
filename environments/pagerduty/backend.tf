terraform {
  backend "s3" {
    bucket  = "iamclyde-terraform"
    key     = "tfstate/pagerduty"
    region  = "us-east-1"
    encrypt = "true"
  }
}
