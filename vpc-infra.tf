# Creating the vpc

resource "aws_vpc" "Demo-terraform-project" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Demo-terraform-project"
  }
}

# Creating the subnets

resource "aws_subnet" "mysubnet-1a" {
  vpc_id     = aws_vpc.Demo-terraform-project.id
  cidr_block = "10.10.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "terraform-subnet-1a"
  }
}

resource "aws_subnet" "mysubnet-1b" {
  vpc_id     = aws_vpc.Demo-terraform-project.id
  cidr_block = "10.10.2.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "terraform-subnet-1b"
  }
}

# Creating private subnet

resource "aws_subnet" "mysubnet-1c" {
  vpc_id     = aws_vpc.Demo-terraform-project.id
  cidr_block = "10.10.3.0/24"
  availability_zone = "ap-south-1c"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "terraform-subnet-1c"
  }
}