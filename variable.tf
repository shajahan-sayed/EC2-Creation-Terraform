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
variable "key_name" {
description = "selecting Key Pair"
type = string
}

