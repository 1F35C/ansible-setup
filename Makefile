run:
	ansible-playbook --ask-become-pass -i hosts -e "vault_password=$(password)" dev-setup-playbook.yaml
