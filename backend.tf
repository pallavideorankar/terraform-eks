terraform {
  backend "s3" {
    bucket         = "futuiontech-eks-terraform"
    key            = ".terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "terraform-state-lock-dynamodb"
  }
}

