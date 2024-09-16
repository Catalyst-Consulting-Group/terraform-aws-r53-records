resource "aws_route53_record" "this" {
  count = 3

  name    = format("%s._domainkey.%s", var.tokens[count.index], var.domain)
  type    = "CNAME"
  records = [format("%s.dkim.amazonses.com", var.tokens[count.index])]
  ttl     = var.ttl

  allow_overwrite = var.allow_overwrite

  zone_id = var.zone_id
}
