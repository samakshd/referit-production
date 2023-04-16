#!/bin/bash
kubectl create ns referit
kubectl config set-context --current --namespace=referit
bash setup_database.sh
bash setup_configuration.sh
bash setup_project.sh