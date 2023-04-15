kubectl apply -f referit-backend.yaml
sleep 2
kubectl apply -f referit-frontend.yaml
sleep 2
kubectl apply -f referit-ingress.yaml
sleep 2