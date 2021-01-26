# elasticsearch
#### operate:
- **install**: install elasticsearch.
- **update**: only update the config but not restart elasticsearch.
- **start**: start elasticsearch.
- **stop**: stop elasticsearch.
- **restart**: restart elasticsearch.

#### example:
```
ansible-playbook -e user=root -e host=elasticsearch -e operate=install elasticsearch.yml
```
# kibana
#### operate:
- **install**: install kibana.
- **update**: only update the config and restart kibana.
- **start**: start kibana.
- **stop**: stop kibana.
- **restart**: restart kibana.

#### example:
```
ansible-playbook -e user=root -e host=kibana -e operate=install kibana.yml
```

# logstash
#### operate:
- **install**: Running logstash in docker.
- **update**: Update logstash configs and it will auto reload the configs for peer 10 seconds

#### example:
```
ansible-playbook -e user=root -e host=logstash -e operate=install logstash.yml
```
