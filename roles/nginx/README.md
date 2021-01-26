# nginx
#### operate:
- **update**: update and reload nginx conf.
- **reload**: reload nginx conf.
- **test**: test nginx conf.

#### example:
```
cd /etc/ansible/roles/nginx 
ansible-playbook -e user=root -e host=nginx -e operate=update nginx.yml
```
