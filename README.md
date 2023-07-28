# rancher-cluster-workload

[![CI](https://github.com/frontierdigital/rancher-cluster-workload/actions/workflows/ci.yml/badge.svg)](https://github.com/frontierdigital/rancher-cluster-workload/actions/workflows/ci.yml)

## About

## Test
```sh
INCLUDE_DEV=true make install
make test
```

## Deploy
```sh
export ARM_CLIENT_ID="[ARM client ID]" \
  ARM_CLIENT_SECRET="[ARM client secret]" \
  ARM_SUBSCRIPTION_ID="[ARM subscription ID]" \
  ARM_TENANT_ID="[ARM tenant ID]" \
  ENVIRONMENT="[environment]" \
  REGION="[region]" \
  SET="[set]" \
  WORKLOAD_NAME="[workload name]" \
  WORKLOAD_TYPE="rancher-cluster-workload" \
  WORKLOAD_VERSION="[workload version]" \
  ZONE="[zone]"
make deploy
```

## Configuration
```sh
# config/[environment]/main.tfvars

clusters = [
  {
    name               = "[name, e.g. foo]"
    kubernetes_version = "[kubernetes version, e.g 1.27.3]"
    node_count         = "[node count, e.g. 3]"
    vm_size            = "[VM size, e.g. Standard_D2s_v3]"
  },
  [...]
]
rancher_server_key_vault_id = "[Rancher Server Key Vault resource ID]"
```
