# k8s-logs-monitoring

Dashboard Rancher: https://osc.rancher.fr:8443
Dashboard Minio: http://osc.rancher.fr:9001

```bash
ssh ccm-master-cluster -L 8443:localhost:443 -L 9001:10.42.3.6:9001
```


## Restart cluster
https://github.com/rancher/rke2/discussions/4107

```bash
systemctl stop rke2-server
rke2-killall.sh
rke2 server --cluster-reset
systemctl start rke2-server
```