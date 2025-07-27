resource "aws_dynamodb_table" "my_dynamo" {

    name = "${var.env}-my-terra-dynamo"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = var.hash_key

    attribute {

        name = var.hash_key
        type = "S"
      
    }

    tags = {

        Name = "${var.env}-my-terra-dynamo"
        Environment = var.env
    }
  
}