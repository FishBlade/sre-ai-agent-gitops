#!/bin/bash
MYSQL_POD=$(kubectl get pod -n ai-services -l app=mysql -o jsonpath="{.items[0].metadata.name}")

# 登录 MySQL 请不要在生产时这样明文登录，非常危险！
echo "正在登录MySQL"
kubectl exec -it $MYSQL_POD -n ai-services -- mysql -u root -pnative
