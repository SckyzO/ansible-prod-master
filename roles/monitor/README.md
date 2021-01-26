# prometheus
#### operate:
- **install**: running prometheus in docker.
- **start**: start the prometheus container.
- **stop**: stop the prometheus container.
- **delete**: only delete the prometheus container.
- **reload**: reload prometheus configs.

#### example:
```
ansible-playbook -e host=prometheus -e operate=install prometheus.yml
```

# alertmanager
#### operate:
- **install**: running alertmanager in docker.
- **start**: start the alertmanager container.
- **stop**: stop the alertmanager container.
- **delete**: only delete the alertmanager container.
- **reload**: reload alertmanager configs.

#### example:
```
ansible-playbook -e host=alertmanager -e operate=install alertmanager.yml
```

# node_exporter
#### operate:
- **install**: running node_exporter.
- **start**: start node_exporter.
- **stop**: stop node_exporter.
- **restart**: restart node_exporter.

#### example:
```
ansible-playbook -e host=node_exporter -e operate=install node_exporter.yml
```

# dingtalk_webhook
#### operate:
- **install**: running dingtalk_webhook container.
- **start**: start dingtalk_webhook container.
- **stop**: stop dingtalk_webhook container.
- **delete**: only delete dingtalk_webhook container.

#### example:
```
ansible-playbook -e host=dingtalk_webhook -e operate=install dingtalk_webhook.yml
```


# kube_state_metrics
#### operate:
- **install**: 部署kube-state-metrics到k8s集群.
- **delete**: 从k8s集群中删除.
- **apply**: 应用更改的配置.


#### example:
```
ansible-playbook -e host=master01 -e operate=install kube-state-metrics.yml
```




# kubelet_metrics
#### operate:
- **install**: 创建只读权限的k8s sa.
- **delete**: 删除该sa.
- **apply**: 更新该sa权限并使其生效.
- **get**:获取该sa的secret token，并同步到localhost的/var/run/secrets/kubernetes.io/serviceaccount/token目录下.
- **push**:将localhost下/var/run/secrets/kubernetes.io/serviceaccount/token同步到host指定机器的/var/run/secrets/kubernetes.io/serviceaccount/token目录下。


#### example:
```
ansible-playbook -e host=stack -e operate=get -e target=prometheus kubelet_metrics.yml
```
#### notify:
```
install:
1. ansible-playbook -e host=k8s -e operate=install  kubelet_metrics.yml
2. ansible-playbook -e host=k8s -e operate=get kubelet_metrics.yml
3. ansible-playbook -e host=prometheus -e operate=push kubelet_metrics.yml
update role's access rights:
1. ansible-playbook -e host=stack -e operate=apply  kubelet_metrics.yml
```
