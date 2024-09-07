# install ansible

```bash
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

or run bash ansible.sh script

# How to check the connection

```bash
ansible all -m ping
```
