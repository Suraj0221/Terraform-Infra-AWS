# Dev Infrastructure

module "dev-infra" {

    source = "./terra-infra"
    env = "dev"
    bucket_name = "terra-buc-new01231"
    key_name = "terra-net-key"
    sgname = "automate-sg"
    instance_count = 1
    ec2_instance_type = "t3.micro"
    ec2_ami = "ami-042b4708b1d05f512" #ubuntu
    hash_key = "studentID"
  
}


# Staging Infrastructure

module "stg-infra" {

    source = "./terra-infra"
    env = "stg"
    bucket_name = "terra-buc-new01231"
    key_name = "terra-net-key"
    sgname = "automate-sg"
    instance_count = 1
    ec2_instance_type = "t3.micro"
    ec2_ami = "ami-042b4708b1d05f512" #ubuntu
    hash_key = "studentID"
  
}


# Prd Infrastructure

module "prd-infra" {

    source = "./terra-infra"
    env = "prd"
    bucket_name = "terra-buc-new01231"
    key_name = "terra-net-key"
    sgname = "automate-sg"
    instance_count = 2
    ec2_instance_type = "t3.micro"
    ec2_ami = "ami-042b4708b1d05f512" #ubuntu
    hash_key = "studentID"
  
}


# Terrform state locking

module "state-lock" {

    source = "./remote-infra"
  
}