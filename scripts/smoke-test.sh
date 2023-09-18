#!/bin/bash
echo "Forwarding port to 8080 for run smoke test, wait 30 seconds for port forward"
sleep 30
echo "Forwarding port to 8080 for run smoke test, wait 10 seconds for port forward"
kubectl port-forward service/aws-app-service 8080:80 > aws-app-forward-port.log 2>&1 &
sleep 10
http_code=$(curl -LI 127.0.0.1:8080 -o /dev/null -w '%{http_code}\n' -s)

echo $http_code
if [[ ${http_code} -eq 200 ]]; then
    echo "Smoke test passed"
    cat aws-app-forward-port.log
    exit 0
else
    echo "Smoke test failed"
    cat aws-app-forward-port.log
    exit 1
fi