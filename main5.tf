resource "aws_instance" "instance-for-tera" {
  ami             = "ami-05205cb302b6dca6f"
  instance_type   = "t3.micro"
  security_groups = [aws_security_group.allow_tls.name]
  tags = {
    Name = "web-instance"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow for security group"
  vpc_id      = "vpc-0ad4768b3ef5540ef"

  tags = {
    Name = "allow_tls"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
