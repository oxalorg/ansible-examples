ansible-playbook -i "$1"/hosts -e @"$1"/vars.yml -e @"$1"/SECRETS provision.yml --vault-password-file vault.txt -e ansible_conf_dir="$1"
