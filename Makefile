all: 
	ansible-playbook --ask-become-pass -i hosts -e "vault_password=$(password)" everything-playbook.yaml
syncthing:
	ansible-playbook --ask-become-pass -i hosts -e "vault_password=$(password)" syncthing-playbook.yaml
setup:
	ansible-playbook --ask-become-pass -i hosts dev-setup-playbook.yaml
