helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

# kubectl create ns monitoring

helm upgrade --install prom prometheus-community/kube-prometheus-stack -n monitoring --values ../observability-conf/prom-values.yaml
helm upgrade --install promtail grafana/promtail -f ../observability-conf/promtail-values.yaml -n monitoring
helm upgrade --install loki grafana/loki-distributed -n monitoring

kubectl get all -n monitoring

# PORT FORWARD THE SERVICES
# sudo kubectl  port-forward service/prom-grafana 80 -n monitoring
# k port-forward service/prom-kube-prometheus-stack-prometheus -n monitoring 9090
