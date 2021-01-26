# ansible使用规范
- 所有任务均采用role管理
- 静态文件存放到/srv/ansible/files/目录，避免git仓库过大

# 包含模块：
- roles/base
- roles/elk
- roles/middleware
- roles/monitor
- roles/nginx# ansible-prod-master
