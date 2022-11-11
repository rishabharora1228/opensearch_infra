output "vpc-id" {
  value = module.machine.vpc-id
}
output "igw-id" {
  value = module.network.igw-id
}
output "public-subnet-id" {
  value = module.pb_subnet.public-subnet-id
}
output "nat-id" {
  value = module.traffic.nat-id
}
output "private-subnet-id" {
  value = module.pvt_subnet1.private-subnet-id
}
output "private-sg-id" {
  value = module.pvt_sg.private-sg-id
}
output "public-sg-id" {
  value = module.pb_sg.public-sg-id
}
output "manager-instance-id" {
  value = module.manager.instance-id
}
output "data-node1-instance-id" {
  value = module.node1.instance-id
}
output "data-node2-instance-id" {
  value = module.node2.instance-id
}
# output "key-id" {
#   value = module.access_key.key
# }