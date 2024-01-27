#!/bin/bash
# Install k9s
echo "###########################################################################################"
echo "# Install k9s"
echo "###########################################################################################"
echo
wget https://github.com/derailed/k9s/releases/download/v0.26.7/k9s_Linux_x86_64.tar.gz
tar zxvf k9s_Linux_x86_64.tar.gz
rm k9s_Linux_x86_64.tar.gz
sudo mv k9s /usr/local/bin/k9s

echo "###########################################################################################"
echo "# Successfully install k9s!!!"
echo "###########################################################################################"
