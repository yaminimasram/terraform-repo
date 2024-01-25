resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy

  tags = merge(var.common_tags, { Name = "${var.namespace}-vpc" })
}
resource "aws_subnet" "main1" {
  vpc_id                  = aws_vpc.main.id
  count                   = length(var.public_subnet)
  cidr_block              = element(var.public_subnet, count.index)
  map_public_ip_on_launch = true
  tags                    = merge(var.common_tags, { Name = "${var.namespace}Pub-subnet-${count.index + 1}" })
}

resource "aws_subnet" "main2" {
  vpc_id                  = aws_vpc.main.id
  count                   = length(var.private_subnet)
  cidr_block              = element(var.private_subnet, count.index)
  map_public_ip_on_launch = true
  tags                    = merge(var.common_tags, { Name = "${var.namespace}Pri-subnet-${count.index + 1}" })
}
