variable "ami" {
  type        = string
  description = "ami id for OpenSearch instances"
  default     = ""
}
variable "ec2_tags" {
  type        = map(string)
  description = "tags for OpenSearch manager instance"
  default = {
    Name    = "OS-Manager",
    Owner   = "Rishabh Arora",
    purpose = "os-manager"
  }
}
variable "security_group" {
  type        = string
  description = "public sg for OpenSearch instances"
  default     = ""
}
variable "subnet" {
  type        = string
  description = "public subnet for OpenSearch instances"
  default     = ""
}
variable "key_id" {
default = ""
}