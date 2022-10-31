resource "aws_security_group" "public_security_group" {
  name        = var.sg_pb
  description = "security group of os engine"
  vpc_id      = var.vpc_id

  ingress {
    description = "Traffic from VPC"
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Traffic from VPC"
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for os-dashboard "
    from_port   = var.os_dashboard_port
    to_port     = var.os_dashboard_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for os-rest-api "
    from_port   = var.os_restAPI_port
    to_port     = var.os_restAPI_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for os-crossCluster-search "
    from_port   = var.os_crossCluster_port
    to_port     = var.os_crossCluster_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for os-nodeCommunication "
    from_port   = var.os_nodeCommunication_port
    to_port     = var.os_nodeCommunication_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for Performance Analyzer "
    from_port   = var.os_performance_analyzer_port
    to_port     = var.os_performance_analyzer_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.pb_sg_tags
}