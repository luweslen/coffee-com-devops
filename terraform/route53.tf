resource "aws_route53_zone" "luvops" {
  name = "luvops.zrp.dev"
}

resource "aws_route53_record" "luvops_cert" {
  for_each = {
    for item in aws_acm_certificate.luvops_acm.domain_validation_options : item.domain_name => {
      name   = item.resource_record_name
      record = item.resource_record_value
      type   = item.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = aws_route53_zone.luvops.zone_id
}
