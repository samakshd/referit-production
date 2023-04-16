#!/bin/bash
kubectl apply -f persistent-vol.yaml
kubectl apply -f referit-persistent-vol-claim.yaml
kubectl apply -f mongodb.yaml
