variable "path" {
  description = "the vault kv secret path"
  type        = string
}

variable "ttl" {
  description = "the response wrapped secret ttl"
  type        = number
  default     = 360
}

variable "count_wrapping_tokens" {
  description = "the number of response wrapped secrets"
  type        = number
  default     = 1
}
