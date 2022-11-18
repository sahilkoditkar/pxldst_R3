
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = data.aws_ami.ubuntu.id
  name          = var.name
  aws_subnet_id = module.vpc.ec2_subnet
}

module "vpc" {
  source = "./modules/vpc"

}

