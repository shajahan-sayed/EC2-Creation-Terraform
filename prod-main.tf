#create security group to allow SSH and Http
resource "aws_security_group" "prod-main" {
 name        = "prod-main"
 description = "Allow SSH and HTTP"
 vpc_id      =  var.vpc_id

 ingress {
  description = "Allow port SSH"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
 }
 ingress {
   description = "Allow port HTTP"
   from_port  = 80
   to_port    = 80
   protocol   = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
}
egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "prod-main"
  }
}
#creating EC2 instance
resource "aws_instance" "web-page"{
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = element(data.aws_subnet_ids.default.ids, 0)
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.prod-main.id]
  associate_public_ip_address = true

  tags = {
    Name = "web-page"
  }
}
