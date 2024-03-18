output "password" {
  value = aws_iam_user_login_profile.luciano_weslen.password
}
output "luvops_nameservers" {
  value = aws_route53_zone.luvops.name_servers
}
