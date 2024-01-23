resource "aws_iam_user" "hanuman" {
  name = var.user_list[0]
  path = var.user_path
  tags = var.user_tags
}
resource "aws_iam_user" "man" {
  name = var.user_list[1]
  path = var.user_path
  tags = var.user_tags
}
resource "aws_iam_user" "h" {
  name = var.user_list[2]
  path = var.user_path
  tags = var.user_tags
}

resource "aws_iam_user" "bajrang" {
  name = var.user_any["u1"]
  path = var.user_path
  tags = var.user_tags

}
