kubectl apply -f ./namespaces/closed/.
kubectl apply -f ./namespaces/internal/.
kubectl apply -f ./namespaces/public/.
kubectl apply -f ./networkpolicies/np_allow_dns.yaml -n closed
kubectl apply -f ./networkpolicies/np_allow_dns.yaml -n internal
kubectl apply -f ./networkpolicies/np_allow_dns.yaml -n public
kubectl apply -f ./pong_app/deployment.yaml -n closed
kubectl apply -f ./pong_app/deployment.yaml -n internal
kubectl apply -f ./pong_app/deployment.yaml -n public
