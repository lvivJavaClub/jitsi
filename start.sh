!#/bin/bash

sudo apt update

sudo apt install apt-transport-https ca-certificates software-properties-common --yes
sudo add-apt-repository --yes --update ppa:ansible/ansible

sudo apt install ansible --yes

[[ ! -d ${HOME}/jitsi-playbook ]] && git clone https://github.com/lvivJavaClub/jitsi-server.git ${HOME}/jitsi-playbook

cd ${HOME}/jitsi-playbook && git fetch && git pull

cd ${HOME}/jitsi-playbook && ansible-galaxy install --role-file requirements.yml
cd ${HOME}/jitsi-playbook && ansible-playbook --inventory inventory.yaml playbook.yaml
