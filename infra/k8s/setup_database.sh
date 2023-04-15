kubectl apply -f persistent-vol.yaml
sleep 2
kubectl apply -f referit-persistent-vol-claim.yaml
sleep 2
kubectl apply -f mongodb.yaml
sleep 2