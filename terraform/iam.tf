resource "aws_iam_user" "luciano_weslen" {
  name = "luciano.weslen"
}

resource "aws_iam_user_login_profile" "luciano_weslen" {
  user    = aws_iam_user.luciano_weslen.name
  pgp_key = "keybase:some_person_that_exists"
}

data "aws_iam_policy_document" "iam_access_policy_document" {
  statement {
    actions   = ["iam:*"]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "luciano_weslen" {
  name   = "iam_access_policy_luciano_weslen"
  user   = aws_iam_user.luciano_weslen.name

  policy = data.aws_iam_policy_document.iam_access_policy_document.json
}
