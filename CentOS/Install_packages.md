## 通过rpm文件安装
```bash
sudo rpm -i **.rpm
```

## 添加其他镜像
```bash
sudo yum-config-manager --add-repo=http://mirror.centos.org/centos/7/extras/x86_64/
```

```conf
[centos.pkgs.org_7_centos-extras-x86_64_]
name=added from: https://centos.pkgs.org/7/centos-extras-x86_64/
baseurl=http://mirror.centos.org/centos/7/extras/x86_64/
enabled=1
gpgcheck=0
```
