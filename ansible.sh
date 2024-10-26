#!/bin/bash
# user data will get sudo access
dnf install ansible -y
cd /tmp
git clone https://github.com/hi-to-cloud/Expense-Ansible-Roles-AWS-2.0.git
cd Expense-Ansible-Roles-AWS-2.0
ansible-playbook main.yml -e SERVER=be -e PASSWORD=ExpenseApp1
ansible-playbook main.yml -e SERVER=fe