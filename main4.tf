resource "aws_instance" "instance-for-tera" {
  ami           = "ami-0e4f85d0d7c4869ba"
  instance_type = "t3.micro"

  tags = {
    Name = "web-instance"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow for security group"
  vpc_id      = "vpc-0cecabdd883ef513c"

  tags = {
    Name = "allow_tls"
  }
}
