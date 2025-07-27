variable "env" {
    
    description = "this one is for environment ."
    type = string
}

variable "bucket_name" {

    description = "this one is for bucket name ."
    type = string

}

variable "key_name" {
  
  description = "this one is for key name ."
  type = string

}

variable "sgname" {

    description = "this one is for security group name ."
    type = string
  
}

variable "instance_count" {
  
    description = "this one is number of ec2 instance ."
    type = number
}

variable "ec2_instance_type" {

    description = "this one is of ec2 instance type ."
    type = string
  
}

variable "ec2_ami" {

    description = "this one is of ec2 ami id ."
    type = string
  
}

variable "hash_key" {

    description = "this one is of hsh key ."
    type = string
  
}