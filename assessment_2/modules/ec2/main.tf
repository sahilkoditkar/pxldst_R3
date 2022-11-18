
resource "aws_instance" "ec2_instance_primary" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.aws_subnet_id
  associate_public_ip_address = true
  tags = {
    Name = "primary_network_interface"
  }

  user_data = file("install.sh")
}

variable "ami" {
  type = string
}
variable "aws_subnet_id" {
  type = string
}
