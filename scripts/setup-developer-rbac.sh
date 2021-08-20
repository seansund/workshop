#! /bin/bash

SCRIPT_DIR=$(cd $(dirname "$0"); pwd -P)
YAML_DIR=$(cd "${SCRIPT_DIR}/../rbac"; pwd -P)

echo "Creating 'developers' group"
oc apply -f "${YAML_DIR}"

oc adm policy add-cluster-role-to-group self-provisioner developers

oc adm policy add-role-to-group ibm-toolkit-view developers -n tools

oc adm policy add-cluster-role-to-group ibm-toolkit-crd-view developers


