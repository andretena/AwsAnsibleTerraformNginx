# Variaveis

variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-2"
}
variable "vpc_id" {
  description = "VPC id"
  default = ""
}
variable "subnet_public_id" {
  description = "VPC public subnet id"
  default = ""
}
variable "security_group_ids" {
  description = "EC2 ssh security group"
  type = "list"
  default = []
}
variable "devtag" {
  description = "Desenvolvimento"
  default = ""
}
variable "key_pair_name" {
  description = "EC2 Key pair name"
  default = ""
}
variable "instancia_ami" {
  description = "Amazon Linux 2 AMI (HVM)"
  default = "ami-0277b52859bac6f4b"
}
variable "instance_type" {
  description = "EC2 instance type"
  default = "t2.micro"
}