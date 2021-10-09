provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "web-app" {
ami = "YOUR LINUX AMI ID"
subnet_id ="YOUR PUBLIC SUBNET ID"
instance_type = "t3.micro"
count = 2
tags = {
  Name = "i-aint-afraid-of-no-terraform-linux"
  Department = "Application Team"
}
}
