vpc_cidr="10.0.0.0/16"

########### public subnet ######################
public_subnet_cidr="10.0.0.0/24"
public_subnet_name="public-subnet"
public_subnet_route_table_id="rtb-87654321"
public_subnet_availability_zone="us-east-1a"


############# region #####################
region = "us-east-1a"


############# instance_type #####################
instance_type = "t2.micro"
instance_types_list=["t2.micro", "t2.small", "t2.medium"]

########### privet subnet ######################
private_subnet_cidr = "10.0.1.0/24"
private_subnet_name = "private-subnet"
private_subnet_route_table_id = "rtb-12345678"


########### key_pair ###########
key_pair = "mac-keyPair"

########### AMI_for_apashe2 ###########
ami = "ami-0b0ea68c435eb488d"

egress_cidr = "0.0.0.0/0"
ingress_cider = "0.0.0.0/0"

public_route_table_cider="0.0.0.0/0"
