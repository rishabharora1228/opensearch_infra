variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for OpenSearch vpc"
}
variable "sg_pvt" {
  type        = string
  description = "private security group"
  default     = "os-engine-pvt-sg"
}
variable "https_port" {
  type        = string
  description = "TCP port for https"
  default     = "443"
}
variable "ssh_port" {
  type        = string
  description = "TCP port for ssh"
  default     = "22"
}
variable "os_dashboard_port" {
  type        = string
  description = "TCP port for OpenSearch dashboard"
  default     = "5601"
}
variable "os_restAPI_port" {
  type        = string
  description = "TCP port for OpenSearch REST API"
  default     = "9200"
}
variable "os_crossCluster_port" {
  type        = string
  description = "TCP port for OpenSearch cross-cluster"
  default     = "9250"
}
variable "os_nodeCommunication_port" {
  type        = string
  description = "TCP port for OpenSearch node-communication"
  default     = "9300"
}
variable "os_performance_analyzer_port" {
  type        = string
  description = "TCP port for OpenSearch Performance Analyzer port"
  default     = "9600"
}
variable "pvt_sg_tags" {
  default     = {}
  description = "Prvate Security group tags for OpenSearch"
  type        = map(string)
}
variable "cidr" {
  default     = {}
}