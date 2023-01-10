resource "aws_vpc" "macz-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "macz-vpc"
    }
}

resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id = "${aws_vpc.macz-vpc.id}"
    cidr_block = "10.0.0.0/24"
    map_public_ip_on_launch = "true" 
    availability_zone = "us-east-1a"
    tags = {
        Name = "prod-subnet-public-1"
    }
}

resource "aws_internet_gateway" "macz-igw" {
    vpc_id = "${aws_vpc.macz-vpc.id}"
    tags = {
        Name = "macz-igw"
    }
}

resource "aws_route_table" "prod-public-crt" {
    vpc_id = "${aws_vpc.macz-vpc.id}"
    
    route {
        cidr_block = "0.0.0.0/0" 
        gateway_id = "${aws_internet_gateway.macz-igw.id}" 
    }
    
    tags = {
        Name = "prod-public-crt"
    }
}

resource "aws_route_table_association" "prod-crta-public-subnet-1"{
    subnet_id = "${aws_subnet.prod-subnet-public-1.id}"
    route_table_id = "${aws_route_table.prod-public-crt.id}"
}

resource "aws_security_group" "ssh-allowed" {
    vpc_id = "${aws_vpc.macz-vpc.id}"
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"

        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "ssh-allowed"
    }
}
  
resource "aws_instance" "mac-app1" {
    ami = "ami-0b0ea68c435eb488d"
    tags = {
      Name = "Terraform-instance"
    }
    instance_type = "t2.micro"
    # VPC
    subnet_id = "${aws_subnet.prod-subnet-public-1.id}"
    # Security Group
    vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
    # the Public SSH key
    key_name = "mac-keyPair"
    # apache installation
    user_data = <<-EOF
    #!/bin/bash
    echo "*** Installing apache2"
    sudo apt update -y
    sudo apt install apache2 -y
    echo "*** Completed Installing apache2"
    EOF

    connection {
        user = "${var.EC2_USER}"
        private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
    }
}