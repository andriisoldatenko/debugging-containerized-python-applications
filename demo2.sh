echo " kubectl create ns demo"
echo "namespace/demo created"

echo " kubectl apply -f ./config/samples/pod.yaml"
echo "pod/sample-app created"

echo "kubectl port-forward -n demo sample-app 8000:8000 5678:5678"
kubectl port-forward -n demo sample-app 8000:8000 5678:5678
