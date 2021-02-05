ansible-playbook \
    -i "$1"/hosts \
    -e @"$1"/SECRETS \
    -e @"$1"/vars.yml \
    deploy.yml \
    --vault-password-file vault.txt \
    -e ansible_conf_dir="$1"
#   --tags=quickdeploy
