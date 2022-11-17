
resource "aws_nat_gateway" "NAT_gateway" {
  connectivity_type = "public"
  allocation_id     = aws_eip.elasticIP.id
  subnet_id         = var.public_subnet_id
  tags              = var.NAT_tags
}
resource "aws_eip" "elasticIP" {
  vpc      = true
}
