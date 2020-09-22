resource "aws_dynamodb_table" "example_users" {
  name = "example-users"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "user_id"

  attribute {
    name = "user_id"
    type = "S"
  }
}
