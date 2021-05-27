# jitsi-playbook

## Install

```bash
 wget -O - https://raw.githubusercontent.com/lvivJavaClub/jitsi-playbook/main/start.sh | bash
```


## Update code

```bash

cd ${HOME}/jitsi-playbook && git feach && git pull

```

## Update jitsi

```bash
cd ${HOME}/jitsi-playbook && ansible-playbook --inventory inventory.yaml playbook.yaml
```
