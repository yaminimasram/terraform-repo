resource "aws_iam_user" "m1" {
  name = "m1"
}

resource "aws_iam_user" "m2" {
  name = "m2"
}

resource "aws_iam_user" "m3" {
 name = "m3"
}

resource "aws_iam_user" "m4" {
 name = "m4"
}

resource "aws_iam_user" "m5" {
 name = "m5"
}

resource "aws_iam_user" "p1" {
 name = "p1"
}

resource "aws_iam_user" "p2" {
 name = "p2"
}

resource "aws_iam_user" "p3" {
 name = "p3"
}

resource "aws_iam_user" "p4" {
 name = "p4"
}

resource "aws_iam_user" "p5"  {
 name = "p5"
}

resource "aws_iam_user" "s1" {
 name = "s1"
}

resource "aws_iam_user" "s2" {
 name = "s2"
}

resource "aws_iam_user" "s3"  {
 name = "s3"
}

resource "aws_iam_user" "s4" {
 name = "s4"
}

resource "aws_iam_user" "s5" {
 name = "s5"
}

resource "aws_iam_group" "group1" {
 name = "group1"
}

resource "aws_iam_group" "group2" {
 name = "group2"
}

resource "aws_iam_group" "group3" {
 name = "group3"
}

resource "aws_iam_group_membership" "group_membership1" {
  name = aws_iam_group.group1.name

  users = [
    aws_iam_user.m1.name,
    aws_iam_user.m2.name,
    aws_iam_user.m3.name,
    aws_iam_user.m4.name,
    aws_iam_user.m5.name,
  ]
  group = aws_iam_group.group1.name
}

resource "aws_iam_group_membership" "group_membership2" {
  name = aws_iam_group.group2.name

  users = [
    aws_iam_user.p1.name,
    aws_iam_user.p2.name,
    aws_iam_user.p3.name,
    aws_iam_user.p4.name,
    aws_iam_user.p5.name,
  ]
  group = aws_iam_group.group2.name
}

resource "aws_iam_group_membership" "group_membership3" {
  name = aws_iam_group.group3.name

  users = [
    aws_iam_user.s1.name,
    aws_iam_user.s2.name,
    aws_iam_user.s3.name,
    aws_iam_user.s4.name,
    aws_iam_user.s5.name,
  ]
  group = aws_iam_group.group3.name
}