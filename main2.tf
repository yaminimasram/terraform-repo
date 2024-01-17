resource "aws_iam_policy" "ec2_list_policy" {
  name        = "EC2ListPolicy"
  description = "Policy for listing EC2 instances"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:DescribeInstances",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "attach_ec2_list_policy" {
  user       = "u1"
  policy_arn = aws_iam_policy.ec2_list_policy.arn
}
