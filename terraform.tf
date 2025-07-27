terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.5.0"
    }
  }

  
  backend "s3" {

    bucket = "terraform-sta-buc02"
    key = "terraform.tfstate"
    region = "eu-north-1"
    dynamodb_table = "my_state_table"
    
  }

}


