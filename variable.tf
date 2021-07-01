variable "aws_access_key" {}
variable "aws_secret_key" {}  
variable "aws_region" {}
variable "azs" {
    type = list
    default = ["us-east-1a","us-east-1b","us-east-1c"]
}
variable "vpc_name" {}
variable "vpc_cidr" {}
#variable "public_subnet1_name" {}
#variable "public_subnet1_cidr" {}
variable "IGW_name" {}
variable "Main_Routing_Table" {}
variable "key_name" {} 
variable "amis" {
    type = map
    default = {
      us-east-2    = "ami-08814ae27e6f9262d" #amazonLinux
      us-east-1    = "ami-0d296d66f22f256c2" #amazonLinux
      us-west-1    = "ami-04ae4c46071cfb89f" #amazonLinux 
  }
}
variable "blocks" {
    type = list
    default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}