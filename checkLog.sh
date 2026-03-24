#!/bin/bash
# 获取Pod全名
AGENT_POD=$(kubectl get pods -l app=sre-agent -o jsonpath='{.items[0].metadata.name}')
echo "Agent Pod名称: $AGENT_POD"

# 查看Agent的实时日志
echo "开始查看Agent日志（按Ctrl+C退出）..."
kubectl logs -f $AGENT_POD
