# Gitlab 配置与安装

## 下载印象

### Image

官方 Image : `docker pull gitlab/gitlab-ce`

中文化 Image : `docker pull registry.aliyuncs.com/lab99/gitlab-ce-zh:latest`

### 启动方式

```shellscript
 sh start.sh
```

### Volumes 目录

```
/etc/gitlab     // gitlab 配置档
/var/log/gitlab // gitlab 记录档
/var/opt/gitlab // gitlab 档案储存
```

### 修改配置档
