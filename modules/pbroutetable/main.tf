resource "aws_route_table" "public_routeTable" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }
  tags = var.public_routeTable_tags
}