#Variaveis
variable "access_key" { }
variable "secret_key" { }
variable "region" {
  default = "us-east-2"
}
variable "availability_zone" {
  default = "us-east-2a"
}
variable "desenvolvimento" {
  description = "Desenvolvimento"
  default = "dev"
}