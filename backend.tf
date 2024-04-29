terraform {
  backend "s3" {
    bucket         = "futuiontech-eks-terraform"
    key            = ".terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock-dynamodb"
  }
}

