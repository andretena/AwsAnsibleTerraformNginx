#Variaveis
variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-2"
}
variable "zona_disponivel" {
  default = "us-east-2a"
}
variable "cidr_block_range" {
  description = "CIDR para VPC"
  default = "10.1.0.0/16"
}
variable "subnet1_cidr_block_range" {
  description = "CIDR para sub-rede publica de VPC"
  default = "10.1.0.0/24"
}
variable "subnet2_cidr_block_range" {
  description = "CIDR para sub-rede privada de VPC"
  default = "10.2.0.0/24"
}
variable "desenvolvimento" {
  description = "tag desenvolvimento"
  default = ""
}
variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/id_rsa.pub"
}