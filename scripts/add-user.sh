#! /bin/bash

USER_EMAIL="$1"

USER_ID="IAM#${USER_EMAIL}"

oc adm groups add-users developers "${USER_ID}"
oc adm groups add-users argocd-admins "${USER_ID}"

