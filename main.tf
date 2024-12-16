terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "t1"

  instance_type          = "t2.micro"
  key_name               = "terra"
  monitoring             = true
  vpc_security_group_ids = ["sg-0473adb250221875f"]
  subnet_id              = "subnet-02d3438600ec1fec7"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
