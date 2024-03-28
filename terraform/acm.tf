resource "aws_acm_certificate" "luvops_acm" {
  domain_name               = aws_route53_zone.luvops.name
  validation_method         = "DNS"
  subject_alternative_names = ["*.${aws_route53_zone.luvops.name}"]

  lifecycle {
    create_before_destroy = true
  }
}
