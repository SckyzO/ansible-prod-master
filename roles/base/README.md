# inits
Initialized system

> cat inits.yml

you can edit inits.yml with different roles to be installed.
```yml
- hosts: "{{ host }}"
  roles:
    - inits
    #- lvm
    - docker
```

# docker
install docker

```
ansible-playbook -e user=root -e host=docker docker.yml
```

# lvm
Initialized lvm

```
ansible-playbook -e user=root -e host=hosts lvm.yml
```

# jdk
Initialized jdk

```
ansible-playbook -e host=k8s-node -e operate=install -e java_version=8 jdk.yml
```
