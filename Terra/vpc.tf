


resource "aws_vpc" "demo1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc-demo1"
  }
}

resource "aws_internet_gateway" "demo-igw" {
  vpc_id = aws_vpc.demo1.id

  tags = {
    Name = "demo1-igw"
  }
}

# resource "aws_subnet" "demo1-subnet-pub" {
#   vpc_id     = aws_vpc.demo1.id
#   cidr_block = "10.0.1.0/24"
#   map_public_ip_on_launch=true
#   tags = {
#     Name = "Public-Subnet"
#   }
# }

resource "aws_subnet" "demo1-subnet-pub" {
  count      = length(var.public_subnet_cidrs)
  vpc_id     = aws_vpc.demo1.id
  cidr_block = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)
  map_public_ip_on_launch=true
  tags = {
    Name = "Public-Subnet-${count.index + 1}"
  }
}


resource "aws_route_table" "demo1-rtb" {
  vpc_id = aws_vpc.demo1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo-igw.id 
  }

  tags = {
    Name = "demo1-rtb1"
  }
}

resource "aws_route_table_association" "a" {
  count = length(var.public_subnet_cidrs)
  route_table_id = aws_route_table.demo1-rtb.id
  subnet_id      = element(aws_subnet.demo1-subnet-pub[*].id, count.index)

}


# resource "aws_subnet" "demo1-subnet-pvt1" {
#   vpc_id     = aws_vpc.demo1.id
#   cidr_block = "10.0.2.0/24"
#   tags = {
#     Name = "Private-Subnet"
#   }
# }

resource "aws_subnet" "demo1-subnet-pvt" {
  count      = length(var.private_subnet_cidrs)
  vpc_id     = aws_vpc.demo1.id
  cidr_block = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name = "Private-Subnet-${count.index + 1}"
  }
}