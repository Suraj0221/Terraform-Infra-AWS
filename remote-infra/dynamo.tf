resource "aws_dynamodb_table" "basic_dynamo" {

    name = "my_state_table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      
      name = "LockID"
      type = "S"
    }

    tags = {
      
      Name = "my_state_table"
    }
  
}