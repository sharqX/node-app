resource "aws_vpc" "node-vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true
  tags = {
    Name = "Node-vpc"
  }
}

resource "aws_subnet" "s1" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.node-vpc.id
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true

}

resource "aws_subnet" "s2" {
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.node-vpc.id
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = true

}

resource "aws_subnet" "s3" {
  cidr_block = "10.0.3.0/24"
  vpc_id = aws_vpc.node-vpc.id
  availability_zone = "ap-south-1c"
  map_public_ip_on_launch = true

}

resource "aws_security_group" "node-sg" {
    name = "node-sg"
    vpc_id = aws_vpc.node-vpc.id

    ingress {
        description = "HTTPS"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "HTTP"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "HTTPS"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }


  
}