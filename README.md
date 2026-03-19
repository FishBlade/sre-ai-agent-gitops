SRE-Ai-Agent

kubectl get svc argocd-server -n argocd #获取argocdpod端口

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo #获取argocd密码

kubectl get svc -n monitoring #通过服务获取grafana和promethues端口 # Grafana的默认用户名/密码是admin/prom-operator
