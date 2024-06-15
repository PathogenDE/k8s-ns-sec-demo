minikube start --cni=calico
minikube addons enable ingress

minikube ip

result >> echo " ping-app.local"



http GET pong-app-service.public.svc.cluster.local/ping