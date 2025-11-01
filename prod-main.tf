
#creating EC2 instance
resource "aws_instance" "web-page"{
  ami           = var.ami_id
  instance_type = var.instance_type
  associate_public_ip_address = true

  tags = {
    Name = "web-page"
  }
}
