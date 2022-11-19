vpc_cidr = "11.0.0.0/16"
vpc_tags = {
  Name    = "OpenSearch-vpc",
  Owner   = "Rishabh Arora",
  purpose = "os server"
}
public_subnet_cidr = "11.0.192.0/19"
public_subnet_tags = {
  Name    = "os-subnet",
  Owner   = "Rishabh Arora",
  purpose = "os manager"
}
private_subnet1_cidr = "11.0.160.0/19"
private_subnet1_tags = {
  Name    = "data-node1",
  Owner   = "Rishabh Arora",
  purpose = "os data node"
}
private_subnet2_cidr = "11.0.128.0/19"
private_subnet2_tags = {
  Name    = "data-node2",
  Owner   = "Rishabh Arora",
  purpose = "os data node"
}
pvt_sg_tags = {
  Name    = "OS-engine-private-sg"
  Owner   = "Rishabh Arora"
  purpose = "OS-Engine"
}
pb_sg_tags = {
  Name    = "OS-engine-public-sg"
  Owner   = "Rishabh Arora"
  purpose = "OS-Engine"
}
public_subnet_zone   = "us-east-1a"
private_subnet1_zone = "us-east-1b"
private_subnet2_zone = "us-east-1c"
ami                  = "ami-08c40ec9ead489470"
manager_tags = {
  Name    = "OS-Manager",
  Owner   = "Rishabh Arora",
  purpose = "os-manager"
  env     = "os"
}
node1_tags = {
  Name    = "OS-Data-Node1",
  Owner   = "Rishabh Arora",
  purpose = "os-data-node"
  env     = "os"
}
node2_tags = {
  Name    = "OS-Data-Node2",
  Owner   = "Rishabh Arora",
  purpose = "os-data-node"
  env     = "os"
}
access_key = "OpenSearch"
key_path   = "/home/ubuntu/OpenSearch.pem"
key_id = "cnode"
existing_vpc_tags = {
  Name = "jenkins-vpc"
}
existing_routetable_tags = {
  Name = "defaultrt"
}
instance_type = "t2.large"
manager_zone = "us-east-1a"
node1_zone   = "us-east-1b"
node2_zone   = "us-east-1c"
