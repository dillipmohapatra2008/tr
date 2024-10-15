data "aws_vpc" "GetVPC" {
filter {
	name = "tag:Name"
	values = ["Custom_VPC"]
	}
}

data "aws_internet_gateway" "GetIGW" {

filter {
	name = "tag:Name"
	values = ["IGW"]
	}
}
