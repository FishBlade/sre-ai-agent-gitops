SRE-Ai-Agent

kubectl get svc #获取服务绑定的端口

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo #获取argocd密码 # Grafana的默认用户名/密码是admin/prom-operator
 
AGENT_POD=$(kubectl get pods -l app=sre-agent -o jsonpath='{.items[0].metadata.name}') 
kubectl logs -f $AGENT_POD #查看系统日志 --之后可以写成shell脚本，方便演示

shell脚本可以快速查询当前绑定的ArgoCD接口和初始密码
