
# Key Pair

resource "aws_key_pair" "my_key" {

    key_name = "${var.env}-${var.key_name}"
    public_key = file("terra-ney.pub")

    tags = {

        Environment = var.env
    }
  
}


# VPC

resource "aws_default_vpc" "default" {
  
}


# Security group

resource "aws_security_group" "my_security_group" {

    name = "${var.env}-${var.sgname}"
    description = "This is for security purpose"
    vpc_id = aws_default_vpc.default.id  # interpolation
    

    # inbound rules

    ingress {

        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "SSH open"
    }

    ingress {

        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "HTTP open"
    }

    # outbound rules

    egress {

        from_port = 0
        to_port = 0
        protocol = (-1)
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {

        Name = "${var.env}-${var.sgname}"
       
    }
  
}


# EC2 Instance

resource "aws_instance" "my_instance" {

    count = var.instance_count
    key_name = aws_key_pair.my_key.key_name
    security_groups = [aws_security_group.my_security_group.name]
    instance_type = var.ec2_instance_type
    ami = var.ec2_ami

    root_block_device {
      
      volume_size = var.env == "prd" ? 20 : 10
      volume_type = "gp3"
    }

    tags = {
      
      Name = "${var.env}-my-terra-instance"
      Environment = var.env
    }
  
}