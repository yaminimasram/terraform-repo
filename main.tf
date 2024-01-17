resource "aws_iam_user" "userme" {
    name = "Developer"
    path = "/opt/"
    tags = {
        team = "Development"
    }
}