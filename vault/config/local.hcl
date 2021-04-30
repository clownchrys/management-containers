api_addr = "http://0.0.0.0:8200"

backend "file" {
      path = "vault/file"
}

listener "tcp" {
      address = "0.0.0.0:8200"
      tls_disable = 1
}

default_lease_ttl = "876000h"
max_lease_ttl = "876000h"

ui = true
disable_mlock = true
log_level =  "trace"