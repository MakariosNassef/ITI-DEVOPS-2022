resource "aws_security_group" "ssh-allowed" {
    vpc_id = "${aws_vpc.macz-vpc.id}"
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = [var.egress_cidr]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"

        cidr_blocks = [var.ingress_cider]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [var.ingress_cider]
    }
    tags = {
        Name = "ssh-allowed"
    }
}