resource "aws_iam_user" "luciano_weslen" {
  name = "luciano.weslen"
}

resource "aws_iam_user_login_profile" "luciano_weslen" {
  user = aws_iam_user.luciano_weslen.name
}

data "aws_iam_policy_document" "iam_access_policy_document" {
  statement {
    actions = [
      "iam:*",
      "s3:*",
      "route53:*",
      "route53domains:*",
      "acm:*",
      "cloudfront:*",
      "rds:*",
      "vpc:*",
      "ec2:*",
    ]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "luciano_weslen" {
  name = "iam_access_policy_luciano_weslen"
  user = aws_iam_user.luciano_weslen.name

  policy = data.aws_iam_policy_document.iam_access_policy_document.json
}

