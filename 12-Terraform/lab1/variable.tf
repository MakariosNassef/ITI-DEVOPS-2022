############# VPC_cidr #####################
variable "vpc_cidr" {
    description = "vpc_cider_variable_16"
}


############# subnet_sidr #####################
variable "public_subnet_cidr" {
    description = "variable_public_subnet_cidr"
}

variable "public_subnet_name" {
    description = "variable_public_subnet_name"
}

variable "public_subnet_route_table_id" {
    description = "variable_public_subnet_table_id"
}

variable "public_subnet_availability_zone" {
    description = "variable_public_subnet_availability_zone"
}

############# region #####################
variable "region" {
    description = "region"
}

############# instance_type #####################
variable "instance_type" {
    description = "instance_type"
}

variable "instance_types_list" {
  type = list
}

########### privet subnet ######################
variable "private_subnet_cidr" {
    description = "private_subnet_cidr"
}

variable "private_subnet_name" {
    description = "private_subnet_name"
}

variable "private_subnet_route_table_id" {
    description = "private_subnet_table_id"
}

variable "user_data"{
    default = <<-EOF
        #!/bin/bash
        echo " Installing apache2"
        sudo apt update -y
        sudo apt install apache2 -y
        echo " Completed Installing apache2"
        EOF
    description = "apache2-instance"
}

########### key_pair ###########
variable "key_pair" {
  type = string
}

########### AMI ###########
variable "ami" {
    description = "AMI"
}

variable "egress_cidr" {
  
}

variable "ingress_cider" {
  
}

variable "public_route_table_cider" {
  
}