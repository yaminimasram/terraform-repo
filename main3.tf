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

resource "aws_iam_group_membership" "group_membership1" {
  name = aws_iam_group.group1.name

  users = [
    aws_iam_user.m1.name,
    aws_iam_user.m2.name,
    aws_iam_user.m3.name,
  ]
  group = aws_iam_group.group1.name
}

resource "aws_iam_group_membership" "group_membership2" {
  name = aws_iam_group.group2.name

  users = [
    aws_iam_user.m4.name,
    aws_iam_user.m5.name,
  ]
  group = aws_iam_group.group2.name
}
