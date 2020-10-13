# terraform-vault-wrapping-token
Response wrap a vault kv secret.

Use Cases:
* VMware provisioning for in-place systems - inject access to a secret into cloud-init script securely

## Requirements

* bash
* Vault cli installed locally
* When working with VMware - virtual machine template w/cloud-init and vmware guestinfo datasource pre-installed

## Providers

| Name | Version |
|------|---------|
| external | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| count\_wrapping\_tokens | the number of response wrapped secrets | `number` | `1` | no |
| path | the vault kv secret path | `string` |  | yes |
| ttl | the response wrapped secret ttl | `number` | `360` | no |

## Outputs

| Name | Description |
|------|-------------|
| wrapping\_tokens | n/a |
