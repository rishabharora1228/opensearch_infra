resource "aws_instance" "ec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  tags                   = var.ec2_tags
  key_name               = var.key_id
  vpc_security_group_ids = [var.security_group]
  subnet_id              = var.subnet
}
