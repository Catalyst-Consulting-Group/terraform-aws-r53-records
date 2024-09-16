variable "domain_validation_options" {
  description = "(Required) The domain validation options of the ACM certificate"
  type        = any
}

variable "zone_id" {
  description = "(Required) The Route 53 hosted zone ID to create the DNS records in"
  type        = string
}

variable "ttl" {
  description = "(Optional, default: 300) The TTL of the DKIM records"
  type        = number
  default     = 300
}

variable "allow_overwrite" {
  description = "(Optional, default: false) Allow overwriting of existing records"
  type        = bool
  default     = false
}
