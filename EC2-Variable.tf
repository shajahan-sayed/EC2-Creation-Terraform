variable "aws_region" {
description: "Selecting AWS region"
type = string
}
variable "instance_type" {
description : "selecting instance type to create instance"
type = string
default = "t2.micro"
}
variable "AMI_ID" {
decription = "selecting AMI image"
type = string
}
variable "Key_pair" {
description : "selecting Key Pair"
type = string
}
