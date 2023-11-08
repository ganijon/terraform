terraform init |
  -backend-config="resource_group_name=digital_infra_state" \
  -backend-config="storage_account_name=stdeveastustate" \
  -backend-config="container_name=tfstates" \
  -backend-config="key=network/terraform.state" \