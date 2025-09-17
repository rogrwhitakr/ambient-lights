# oneliner

# get the installed packages
ansible localhost -m package_facts -a "manager=auto" -o -b --ask-become-pass | grep -o '{.*}' | jq -r '.ansible_facts.packages | keys[]'

# get the installed packages with version
ansible localhost -m package_facts -a "manager=auto" -o -b --ask-become-pass | grep -o '{.*}' | jq -r '.ansible_facts.packages | to_entries[] | "\(.key) \(.value[] | .version)-\(.release) \(.value[].arch)