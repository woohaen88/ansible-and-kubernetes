/bin/bash

# PV
echo "###########################################################################################"
echo "Create Persistent Volume for Portainer
echo "###########################################################################################"
echo
kubectl apply -f portainer-pv.yaml

# apply
echo "###########################################################################################"
echo "# Apply portainer.yaml from https://raw.githubusercontent.com/portainer/k8s/master/deploy/manifests/portainer/portainer.yaml
echo "###########################################################################################"
echo
kubectl apply -n portainer -f https://raw.githubusercontent.com/portainer/k8s/master/deploy/manifests/portainer/portainer.yaml

# CHECK
echo "###########################################################################################"
echo "# Check portianer POD, SERVICE, PV in namespace portainer"
echo "###########################################################################################"
echo
kubectl -n portainer get pv,pvc
echo
kubectl get po,sc -o wide -n portainer
echo
