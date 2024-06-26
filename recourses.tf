terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Create a VPC
resource "aws_vpc" "lab-vpc" {
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "lab-vpc"
  }
}
# Create an EC2 Instance
resource "aws_instance" "first-tf-instance" {
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.micro"
 
  tags = {
    Name        = "my-first-terraform-instance"
  }
}  