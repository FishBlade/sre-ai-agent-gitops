#!/bin/bash

#获取ArgoCD服务端口
ArgoSocket=$(kubectl -n argocd get svc argocd-server -o jsonpath='{.spec.ports[?(@.name=="http")].nodePort}')
echo "ArgoCD端口号: $ArgoSocket"
# 获取ArgoCD初始管理员密码
ArgoPassWD=$(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo)
echo "ArgoCD密码: $ArgoPassWD"

# 检查sre-agent的Pod状态
echo "确认Agent Pod正在运行..."
kubectl get pods -l app=sre-agent

# 获取Pod全名
AGENT_POD=$(kubectl get pods -l app=sre-agent -o jsonpath='{.items[0].metadata.name}')
echo "Agent Pod名称: $AGENT_POD"
echo "--- 基础信息汇总 ---"
