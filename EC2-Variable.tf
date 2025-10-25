variable "aws_region" {
description = "Selecting AWS region"
type = string
}
variable "instance_type" {
description = "selecting instance type to create instance"
type = string
default = "t2.micro"
}
variable "ami_id" {
description = "selecting AMI image"
type = string
}
variable "Key_pair" {
description = "selecting Key Pair"
type = string
}
variable "vpc_id" {
  description = "Existing VPC ID where EC2 and SG will be created"
  type        = string
}

variable "subnet_id" {
  description = "Public Subnet ID where EC2 instance will be launched"
  type        = string
}
