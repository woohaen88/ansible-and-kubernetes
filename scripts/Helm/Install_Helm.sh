#!/bin/bash

echo "##################################################################################################################"
echo "# Helm now has an installer script that will automatically grab "
echo "# the latest version of Helm and install it locally."
echo "# You can fetch that script, and then execute it locally. "
echo "# It's well documented so that you can read through "
echo "# it and understand what it is doing before you run it."
echo "##################################################################################################################"
echo ""
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh