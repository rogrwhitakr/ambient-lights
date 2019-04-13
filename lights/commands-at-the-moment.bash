
# dependences werk now, a dash in front was missing
ansible-playbook -i inventory/inventory.yml site.yml --ask-become-pass

# for VMs on Finch
ansible-playbook -i inventory/inventory.finch.yml northern-lights.yml --ask-become-pass

# check if it works, it does... unsure what to do
ansible -i inventory/inventory.finch.yml server_auth -m setup --ask-become-pass

# this dont work
ansible-playbook -i inventory/inventory.finch.yml northern-lights.yml --extra-vars "ansible_become_pass=vasques"