
# dependences werk now, a dash in front was missing
ansible-playbook -i inventory/inventory.yml site.yml --ask-become-pass

# for VMs on Finch
ansible-playbook -i inventory/inventory.finch.yml northern-lights.yml --ask-become-pass