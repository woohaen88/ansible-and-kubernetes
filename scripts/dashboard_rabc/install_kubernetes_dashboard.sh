#!/bin/bash

# Compatibility
# Kubernetes version	1.22	1.23	1.24	1.25
# Compatibility	 	?	?	?	✓
# ✓ Fully supported version range.
# ? Due to breaking changes between Kubernetes API versions, some features might not work correctly in the Dashboard.


echo "#########################################################################################################"
echo "# Install Kubernetes Dashboard"
echo "#########################################################################################################"
echo
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml
echo
kubectl get pod -n kubernetes-dashboard
