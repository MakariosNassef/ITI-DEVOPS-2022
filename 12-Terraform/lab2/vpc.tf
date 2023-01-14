resource "aws_vpc" "macz-vpc" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "macz-vpc"
    }
}
