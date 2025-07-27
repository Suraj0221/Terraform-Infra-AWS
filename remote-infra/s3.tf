resource "aws_s3_bucket" "remote_s3" {

    bucket = "terraform-sta-buc02"
    force_destroy = true

    tags = {

      Name = "terraform-sta-buc02"
    }
  
}