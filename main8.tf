resource "aws_instance" "nginx-instance" {
  ami             = "ami-03f4878755434977f"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.allow_tls.name]
  user_data       = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              sudo rm /var/www/html/index*
              sudo echo "jay shree ram" > /var/www/html/index.html
              sudo systemctl restart nginx
              EOF
  tags = {
    Name = "nginx-instance"
  }
}

output "public_ip" {
  value = ["aws_instance.nginx_instance.public_ip"]
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
root@ip-172-31-0-14:~/terraform-repo# cat main6.tf 
resource "aws_instance" "nginx-instance" {
  ami             = "ami-03f4878755434977f"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.allow_tls.name]
  user_data       = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              sudo rm /var/www/html/index*
              sudo echo "jay shree ram" > /var/www/html/index.html
              sudo systemctl restart nginx
              EOF
  tags = {
    Name = "nginx-instance"
  }
}

output "public_ip" {
  value = ["aws_instance.nginx_instance.public_ip"]
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
