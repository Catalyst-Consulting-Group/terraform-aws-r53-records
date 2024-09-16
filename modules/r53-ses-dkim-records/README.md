# r53-ses-dkim-records

This module creates Route 53 DNS entries for `aws_ses_domain_identity` and `aws_ses_domain_dkim` resources.

## Usage

```
module "ses_dkim_records" {
  source = "Catalyst-Consulting-Group/r53-records/aws//modules/r53-ses-dkim-records"
  version = "~> 1.0"

  domain = aws_ses_domain_identity.example.domain
  tokens = aws_ses_domain_dkim.example.dkim_tokens

  allow_overwrite = true

  zone_id = aws_route53_zone.example.zone_id
}
```
