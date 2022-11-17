resource "aws_route_table" "private_routeTable" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.nat_id
  }
  tags = var.private_routeTable_tags
}
