output "wrapping_tokens" {
  value = [for i in data.external.vault_wrapping_tokens:
    i.result["wrapped_token"]
  ]
  sensitive = true  
}
