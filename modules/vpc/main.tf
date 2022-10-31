resource "aws_vpc" "os_vpc" {
  cidr_block = var.vpc_id
  tags       = var.vpc_tags
}