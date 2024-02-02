# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Full configuration options can be found at https://www.vaultproject.io/docs/configuration

ui = true

#mlock = true
#disable_mlock = true

storage "raft" {
  path = "/vault/file"
  max_entry_size = 12485760
}

# HTTPS listener
listener "tcp" {
  address       = "0.0.0.0:8200"
  tls_disable	= true
  #tls_cert_file = "/etc/letsencrypt/live/almacen.nohost.network/fullchain.pem"
  #tls_key_file  = "/etc/letsencrypt/live/almacen.nohost.network/privkey.pem"
}

# Enterprise license_path
# This will be required for enterprise as of v1.8
#license_path = "/etc/vault.d/vault.hclic"

api_addr = "https://vault.nohost.network"
cluster_addr = "https://vault.nohost.network:8201"
