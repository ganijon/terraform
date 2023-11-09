terraform init -reconfigure \
  -backend-config="resource_group_name=rg-tf-state-eus-dev-00" \
  -backend-config="storage_account_name=sttfstateeusdev00" \
  -backend-config="container_name=tfstates" \
  -backend-config="key=network/terraform.state" \