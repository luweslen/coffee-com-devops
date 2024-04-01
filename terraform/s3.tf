resource "aws_s3_bucket" "luvops" {
  bucket = "luvops-bucket"
}

resource "aws_s3_object" "luvops_html" {
  bucket       = aws_s3_bucket.luvops.bucket
  key          = "index.html"
  content      = templatefile("${path.module}/templates/index.html.tftpl", { title = "Se AWS te amasse era S2 não S3" })
  content_type = "text/html"
}

data "aws_iam_policy_document" "luvops_policy" {
  statement {
    sid       = "AllowCloudFrontServicePrincipalReadOnly"
    effect    = "Allow"
    resources = ["${aws_s3_bucket.luvops.arn}/*"]
    actions   = ["s3:GetObject"]

    condition {
      test     = "StringEquals"
      variable = "AWS:SourceArn"
      values   = [aws_cloudfront_distribution.luvops.arn]
    }

    principals {
      type        = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }
  }
}

resource "aws_s3_bucket_policy" "luvops" {
  policy = data.aws_iam_policy_document.luvops_policy.json
  bucket = aws_s3_bucket.luvops.bucket
}
