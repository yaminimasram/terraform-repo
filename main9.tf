resource "aws_instance" "httpd-instance" {
  ami             = "ami-0c84181f02b974bc3"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.allow_tls.name]
  user_data       = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install httpd -y
              sudo systemctl start httpd
              sudo systemctl enable httpd
              sudo rm /var/www/html/index*
              sudo echo "jay shree ram" > /var/www/html/index.html
              sudo systemctl restart httpd
              EOF
  tags = {
    Name = "httpd-instance"
  }
}

output "public_ip" {
  value = ["aws_instance.httpd_instance.public_ip"]
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow for security group"
  vpc_id      = "vpc-0ad4768b3ef5540ef"
  tags = {
    Name = "allow_tls"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
