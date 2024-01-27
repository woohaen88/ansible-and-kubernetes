#!/bin/bash

# GIT CLONE
echo "###########################################################################################"
echo "Downloading from GIT: https://github.com/brayanlee/k8s-prometheus.git"
echo "###########################################################################################"
echo

git clone https://github.com/brayanlee/k8s-prometheus.git

echo "###########################################################################################"
echo "Change Diretory to k8s-prometheus/"
echo "###########################################################################################"
echo
cd k8s-prometheus/

# prometheus
echo "###########################################################################################"
echo "Create And Run Prometheus Service"
echo "###########################################################################################"
echo
kubectl create namespace monitoring 
kubectl create -f prometheus/prometheus-ConfigMap.yaml 
kubectl create -f prometheus/prometheus-ClusterRoleBinding.yaml 
kubectl create -f prometheus/prometheus-ClusterRole.yaml 
kubectl create -f prometheus/prometheus-Deployment.yaml 
kubectl create -f prometheus/prometheus-Service.yaml 
kubectl create -f prometheus/prometheus-DaemonSet-nodeexporter.yaml

# kube-system 
echo "###########################################################################################"
echo "Create And Run kube-system"
echo "###########################################################################################"
echo
kubectl create -f kube-state/kube-state-ClusterRoleBinding.yaml 
kubectl create -f kube-state/kube-state-ClusterRole.yaml 
kubectl create -f kube-state/kube-state-ServiceAccount.yaml 
kubectl create -f kube-state/kube-state-Deployment.yaml 
kubectl create -f kube-state/kube-state-Service.yaml

# Grafana 
echo "###########################################################################################"
echo "Create And Run Grafana Service"
echo "###########################################################################################"
echo
kubectl create -f grafana/grafana-Deployment.yaml 
kubectl create -f grafana/grafana-Service.yaml

# CheckPod
echo "###########################################################################################"
echo "Check of pods 'Monitoring' Namespace"
echo "###########################################################################################"
echo
kubectl get pod -n monitoring

# WEB HOST
echo "###########################################################################################"
echo "# To see the Grafana WEB ui, you enter the address below"
echo "# Prometheus: http://192.168.56.101:30003/graph"
echo "# Grafana: http://192.168.56.101:30004"
echo "#"
echo "# Success!!"
echo "###########################################################################################"


