variable "domain" {
  description = "(Required) The domain to create the DKIM records for"
  type        = string
}

variable "tokens" {
  description = "(Required) The DKIM tokens to create DNS records for. Must be a list of 3 strings."
  type        = list(string)
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
