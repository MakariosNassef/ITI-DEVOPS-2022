/*================ Subnets ================*/
/* Internet gateway for the public subnet */
resource "aws_internet_gateway" "macz-igw" {
    vpc_id = "${aws_vpc.macz-vpc.id}"
    tags = {
        Name = "macz-igw"
    }
}

/* Elastic IP for NAT */
resource "aws_eip" "nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.macz-igw]
}

/* NAT */
resource "aws_nat_gateway" "nat" {
  allocation_id = "${aws_eip.nat_eip.id}"
  subnet_id     = "${element(aws_subnet.public_subnet.*.id, 0)}"
  depends_on    = [aws_internet_gateway.macz-igw]
  tags = {
    Name        = "nat"
  }
}

/* Public subnet */
resource "aws_subnet" "public_subnet" {
    vpc_id = "${aws_vpc.macz-vpc.id}"
    cidr_block = var.public_subnet_cidr
    map_public_ip_on_launch = "true" 
    availability_zone = var.region
    tags = {
        Name = "public_subnet"
    }
}

/* Private subnet */
resource "aws_subnet" "private_subnet" {
    vpc_id = "${aws_vpc.macz-vpc.id}"
    cidr_block = var.private_subnet_cidr
    availability_zone = var.region
    map_public_ip_on_launch = false
    tags = {
        Name = "private_subnet"
    }
}

/* Routing table for private subnet */
resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.macz-vpc.id}"
  tags = {
    Name        = "private-route-table"
  }
}
/* Routing table for public subnet */
resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.macz-vpc.id}"
  tags = {
    Name        = "public-route-table"
  }
}

/* aws_route */
resource "aws_route" "public_internet_gateway" {
  route_table_id         = "${aws_route_table.public.id}"
  destination_cidr_block =  var.egress_cidr
  gateway_id             = "${aws_internet_gateway.macz-igw.id}"
}
resource "aws_route" "private_nat_gateway" {
  route_table_id         = "${aws_route_table.private.id}"
  destination_cidr_block = var.ingress_cider
  nat_gateway_id         = "${aws_nat_gateway.nat.id}"
}


/* Route table associations */
resource "aws_route_table_association" "public" {
    subnet_id      = "${aws_subnet.public_subnet.id}"
    route_table_id = "${aws_route_table.public.id}"
}
resource "aws_route_table_association" "private" {
  subnet_id      = "${aws_subnet.private_subnet.id}"
  route_table_id = "${aws_route_table.private.id}"
}

