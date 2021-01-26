# nginx
#### operate:
- **apple**: create ingress service.
- **delete**: delete ingress server.
- **service**: ingress service yml.

#### example:
```
cd /etc/ansible/roles/ingress
ansible-playbook  -e host=ingress-ali-prod  -e operate=apply ingress.yml 
ansible-playbook  -e host=ingress-ali-prod  -e operate=delete -e service=test.corp.triThirty.com.yml ingress.yml 
```
