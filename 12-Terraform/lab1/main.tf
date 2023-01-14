resource "aws_subnet" "public_subnet" {
    vpc_id = "${aws_vpc.macz-vpc.id}"
    cidr_block = var.public_subnet_cidr
    map_public_ip_on_launch = "true" 
    availability_zone = var.region
    tags = {
        Name = "public_subnet"
    }
}

resource "aws_internet_gateway" "macz-igw" {
    vpc_id = "${aws_vpc.macz-vpc.id}"
    tags = {
        Name = "macz-igw"
    }
}

resource "aws_route_table" "public_route_table" {
    vpc_id = "${aws_vpc.macz-vpc.id}"
    
    route {
        cidr_block = var.public_route_table_cider
        gateway_id = "${aws_internet_gateway.macz-igw.id}" 
    }
    
    tags = {
        Name = "public_route_table"
    }
}

resource "aws_route_table_association" "prod-crta-public-subnet-1"{
    subnet_id = "${aws_subnet.public_subnet.id}"
    route_table_id = "${aws_route_table.public_route_table.id}"
}
