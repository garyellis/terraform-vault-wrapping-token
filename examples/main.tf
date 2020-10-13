locals {
  path = "secret/vault-wrapping-token/examples"
}
resource "vault_generic_secret" "example" {
  path = local.path

  data_json = <<EOT
{
  "pizza": "cheese"
}
EOT
}

module "wrapping_token" {
  source = "../"
  path = vault_generic_secret.example.path
}

output "wrapping_token_commands" {
  value = [ for i in module.wrapping_token.wrapping_tokens:
    format("vault unwrap --format=json %s", i)
  ]
}
