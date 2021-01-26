# zookeeper
#### operate:
- **install**: install zookeeper cluster.
- **start**: start zookeeper cluster.
- **stop**: stop zookeeper cluster.
- **restart**: restart zookeeper cluster.

#### example:
```
ansible-playbook -e host=prometheus -e operate=install zookeeper.yml
```

# kafka
#### operate:
- **install**: install kafka cluster.
- **start**: start kafka cluster.
- **stop**: stop kafka cluster.

#### example:
```
ansible-playbook -e host=prometheus -e operate=install kafka.yml
```
