resource "aws_iam_policy" "read_write_policy" {
   name = "ReadWritePolicy"
  description = "Policy for read and write access"

  # Define your policy document with read and write permissions
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:ListBucket"
     ],
      "Resource": "*"
    }
  ]
}
EOF
}
resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = "u1"
  policy_arn = aws_iam_policy.read_write_policy.arn
}
