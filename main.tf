data "external" "vault_wrapping_tokens" {
  count = var.count_wrapping_tokens

  program = ["${path.module}/response-wrap.sh"]
  query   = {
    path = var.path
    ttl     = var.ttl
  }
}
