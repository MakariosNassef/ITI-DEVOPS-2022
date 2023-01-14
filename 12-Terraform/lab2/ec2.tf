resource "aws_instance" "public_instance_apache2" {
    ami = var.ami
    tags = {
      Name = "Terraform-instance"
    }
    instance_type = var.instance_type
    # VPC
    subnet_id = "${aws_subnet.public_subnet.id}"
    # Security Group
    vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
    # the Public SSH key
    key_name = var.key_pair
    # apache installation
    user_data = var.user_data

    connection {
        user = "${var.EC2_USER}"
        private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
    }
}

resource "aws_instance" "private_instance_apache2" {
    ami = var.ami
    tags = {
      Name = "Terraform-instance"
    }
    instance_type = var.instance_type
    # VPC
    subnet_id = "${aws_subnet.private_subnet.id}"
    # Security Group
    vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
    # the Public SSH key
    key_name = var.key_pair
    # apache installation
    user_data = var.user_data

    connection {
        user = "${var.EC2_USER}"
        private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
    }
}