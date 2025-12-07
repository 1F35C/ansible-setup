install:
    sudo apt update
    sudo apt install -y pipx
    pipx ensurepath
    pipx install --include-deps ansible

all:
    pipx run --spec ansible ansible-playbook --ask-become-pass -i hosts -e "vault_password=$(password)" everything-playbook.yaml

dev:
    pipx run --spec ansible ansible-playbook --ask-become-pass -i hosts dev-setup-playbook.yaml
