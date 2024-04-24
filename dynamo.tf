resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name           = "terraform-state-lock-dynamo"
  hash_key       = "LockID"
  billing_mode   = "PAY_PER_REQUEST" # Optional
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

  #tags {
  #   Name = "Terraform Lock Table"
  # }
}
