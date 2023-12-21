# Install ANSIBLE et SSH
```bash

sudo apt update
sudo apt upgrade
sudo apt install ansible

pip install ansible ansible-pylibssh

sudo apt install ssh sshpass openssh-server
```

# Preparation de la clé SSH
```bash
ssh-keygen -t rsa -b 2048
#Presser Entrée puis entrer 2 fois sa passphrase
```

## Créer les fichiers yml et ini disponibles plus haut
```bash
sudo nano Update_upgrade_apt.yml
sudo nano inventaire.ini
sudo nano credentials.yml
```

### Executer la commande 
```bash
ansible-playbook -i inventaire.ini Update_upgrade_apt.yml
```
