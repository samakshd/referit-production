#!/bin/bash
# kubectl apply -f persistent-vol.yaml
# kubectl apply -f referit-persistent-vol-claim.yaml

# k get events to see scheduling error for pv and pvc

kubectl apply -f mongodb.yaml
