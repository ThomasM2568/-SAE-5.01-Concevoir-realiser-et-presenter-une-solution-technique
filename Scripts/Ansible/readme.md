# Install ANSIBLE
```bash

sudo apt update
sudo apt install ansible

pip install ansible
```

# How to use
```bash
ansible-playbook -i host.ini linux_maj_sys.yml
```

# Modify before using
```bash
cp host.ini host.ori.ini
vi host.ini
```

### host.ini
```bash
[debian_servers]
debian1 ansible_host=IP1
debian2 ansible_host=IP2
debian3 ansible_host=IP3
```
