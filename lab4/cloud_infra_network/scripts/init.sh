terraform init \
  -backend-config="resource_group_name=rg-tf-state-eus-dev-02" \
  -backend-config="storage_account_name=sttfstateeusdev02" \
  -backend-config="container_name=tfstates" \
  -backend-config="key=network/terraform.state" \