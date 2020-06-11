![Apply Terraform Code](https://github.com/arctiqjacob/terraform-google-compute/workflows/Apply%20Terraform%20Code/badge.svg?branch=master)

# terraform-google-compute
Repository I use to demo Terraform with GitHub Actions.

## Set Up Vault GCP Secrets Engine
```shell
$ vault login                                 
Token (will be hidden): 
Success! You are now authenticated. The token information displayed below
is already stored in the token helper. You do NOT need to run "vault login"
again. Future Vault requests will automatically use this token.

Key                  Value
---                  -----
token                ...
token_accessor       ...
token_duration       ∞
token_renewable      false
token_policies       ["root"]
identity_policies    []
policies             ["root"]

$ vault secrets enable gcp
Success! Enabled the gcp secrets engine at: gcp/

$ vault secrets tune -default-lease-ttl=2m gcp/  
Success! Tuned the secrets engine at: gcp/

$ vault write gcp/config credentials=@<path-to-json>
Success! Data written to: gcp/config

$ vault write gcp/roleset/compute-provisioner-roleset \
  project="<redacted>" \
  secret_type="service_account_key"  \
  bindings=-<<EOF
    resource "//cloudresourcemanager.googleapis.com/projects/<redacted>" {
        roles = ["roles/compute.admin", "roles/iam.serviceAccountUser"]
    }
EOF
Success! Data written to: gcp/roleset/compute-provisioner-roleset
```