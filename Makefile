install:
	sudo apt update \
		&& sudo apt install -y pipx \
		&& pipx ensurepath \
		&& pipx install --include-deps "ansible~=10.2"
all: 
	ansible-playbook --ask-become-pass -i hosts -e "vault_password=$(password)" everything-playbook.yaml
dev:
	ansible-playbook --ask-become-pass -i hosts dev-setup-playbook.yaml
