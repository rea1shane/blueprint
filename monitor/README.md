# monitor

包含以下平台组件：

- [Prometheus](https://github.com/prometheus/prometheus)
- [Grafana](https://github.com/grafana/grafana)
- [Alertmanager](https://github.com/prometheus/alertmanager)
- [karma](https://github.com/prymitive/karma)

## 准备工作

### 下载模板配置文件

运行：

```shell
# 创建工作区
mkdir -p ~/tmp/monitor/prometheus/alertmanager/
mkdir -p ~/tmp/monitor/prometheus/blackbox_exporter/

# 下载模板配置文件
wget https://raw.githubusercontent.com/prometheus/prometheus/main/documentation/examples/prometheus.yml -O ~/tmp/monitor/prometheus/prometheus.yml
wget https://raw.githubusercontent.com/prometheus/alertmanager/main/examples/ha/alertmanager.yml -O ~/tmp/monitor/prometheus/alertmanager/alertmanager.yml
wget https://raw.githubusercontent.com/prometheus/blackbox_exporter/master/blackbox.yml -O ~/tmp/monitor/prometheus/blackbox_exporter/blackbox.yml

# 拉取资源项目，包含图表与告警规则（可选）
git clone https://github.com/rea1shane/monitor.git ~/tmp/monitor/resources
```

### 修改配置文件

#### Prometheus 配置文件

修改 `~/tmp/monitor/prometheus/prometheus.yml`：

```yaml
# 指定 Alertmanager
alerting:
  alertmanagers:
    - static_configs:
        - targets:
            - alertmanager:9093

# 如果上面拉取了告警规则，需要加载它们
rule_files:
  - /etc/prometheus/rules/*.yml
  - /etc/prometheus/rules/*.yaml

# 添加 blackbox_exporter 到监控列表
scrape_configs:
  - job_name: "blackbox_exporter"
    static_configs:
      - targets: ["blackbox_exporter:9115"]
```
