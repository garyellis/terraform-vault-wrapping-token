#!/bin/bash -e


eval "$(jq -r '@sh "path=\(.path) ttl=\(.ttl)"')"

wrapped_token=$(vault kv get -format=json -wrap-ttl=$ttl $path | jq -r ".wrap_info.token")

jq -n --arg wrapped_token "$wrapped_token" '{"wrapped_token":$wrapped_token}'
