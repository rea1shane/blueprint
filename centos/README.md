# CentOS

安装了一些常用工具的 CentOS。

## 构建

```shell
make build
```

## 运行

```shell
make run \
    CONTAINER_NAME={container_name} \
    SSH_PORT={ssh_port} \
    ARGS={args}
```

## 设置 root 密码

```shell
docker exec -it {container_name} /bin/zsh
passwd
```
