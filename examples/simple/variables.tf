#     __      __        _       _     _           
#     \ \    / /       (_)     | |   | |          
#      \ \  / /_ _ _ __ _  __ _| |__ | | ___  ___ 
#       \ \/ / _` | '__| |/ _` | '_ \| |/ _ \/ __|
#        \  / (_| | |  | | (_| | |_) | |  __/\__ \
#         \/ \__,_|_|  |_|\__,_|_.__/|_|\___||___/

# VPC

variable "vpc_name" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "all_cidr_block" {
  type    = string
  default = "0.0.0.0/0" # All possible IP address range 
}

# EC2

variable "ec2_name" {
  type = string
}

variable "ec2_instance_type" {
  type    = string
  default = "t2.micro"
}