# monitor

包含以下平台组件：

- [Prometheus](https://github.com/prometheus/prometheus)
- [Grafana](https://github.com/grafana/grafana)
- [Alertmanager](https://github.com/prometheus/alertmanager)
- [karma](https://github.com/prymitive/karma)

## 准备工作

下载样例配置文件：

```shell
mkdir -p ~/tmp/prometheus/alertmanager/
wget https://raw.githubusercontent.com/prometheus/prometheus/main/documentation/examples/prometheus.yml -O ~/tmp/prometheus/prometheus.yml
wget https://raw.githubusercontent.com/prometheus/alertmanager/main/examples/ha/alertmanager.yml -O ~/tmp/prometheus/alertmanager/alertmanager.yml
```

在启动项目之前，根据自己的需求对配置文件进行修改。
