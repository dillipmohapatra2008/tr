resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.Custom_VPC.id
tags = {
    Name = "IGW"
  }
}

resource "aws_default_route_table" "associate_vpc" {
  default_route_table_id = aws_vpc.Custom_VPC.main_route_table_id
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

tags = {
Name = "associate_vpc"
}
}