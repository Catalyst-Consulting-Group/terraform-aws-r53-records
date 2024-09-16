# r53-acm-validation-records

This module creates Route 53 DNS entries from an `aws_acm_certificate`'s `domain_validation_options` attribute.

## Usage

```
module "acm_validation" {
  source = "Catalyst-Consulting-Group/r53-records/aws//modules/r53-acm-validation-records"
  version = "~> 1.0"

  domain_validation_options = aws_acm_certificate.example.domain_validation_options
  ttl                       = 300
  allow_overwrite           = true

  zone_id = aws_route53_zone.example.zone_id
}
```
