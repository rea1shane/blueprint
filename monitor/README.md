# monitor

包含以下平台组件：

- [Prometheus](https://github.com/prometheus/prometheus)
- [Grafana](https://github.com/grafana/grafana)
- [Alertmanager](https://github.com/prometheus/alertmanager)
- [karma](https://github.com/prymitive/karma)

## 准备工作

下载样例配置文件：

```shell
# 创建工作区
mkdir -p ~/tmp/monitor/prometheus/alertmanager/

# 下载默认配置文件
wget https://raw.githubusercontent.com/prometheus/prometheus/main/documentation/examples/prometheus.yml -O ~/tmp/monitor/prometheus/prometheus.yml
wget https://raw.githubusercontent.com/prometheus/alertmanager/main/examples/ha/alertmanager.yml -O ~/tmp/monitor/prometheus/alertmanager/alertmanager.yml

# 拉取资源项目，包含图表与告警规则（可选）
git clone https://github.com/rea1shane/monitor.git ~/tmp/monitor/resources
```

在启动项目之前，根据自己的需求对配置文件进行修改。以下为参考：

### 设置 Prometheus 的告警配置

修改 `~/tmp/monitor/prometheus/prometheus.yml`：

```yaml
# Alertmanager configuration
alerting:
  alertmanagers:
    - static_configs:
        - targets:
            - alertmanager:9093

# Load rules once and periodically evaluate them according to the global 'evaluation_interval'.
rule_files:
  - /etc/prometheus/rules/*.yml
```
