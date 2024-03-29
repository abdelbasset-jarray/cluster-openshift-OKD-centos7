#!/bin/bash
#The below configuration can be edited up on your needs and and please note the it's just an example configuration.
#We are going to create an OKD cluster with one master and 3 worker nodes.

#OKD Version
export OKD_VERSION=3.11

#OKD Master Node Configuration
export OKD_MASTER_IP=100.10.33.100
export OKD_MASTER_HOSTNAME=okdmaster-node

#OKD Worker Node 1 Configuration
export OKD_WORKER_NODE_1_IP=100.10.33.101
export OKD_WORKER_NODE_1_HOSTNAME=okdworker1-node

#OKD Worker Node 2 Configuration
export OKD_WORKER_NODE_2_IP=100.10.33.102
export OKD_WORKER_NODE_2_HOSTNAME=okdworker2-node

#OKD Worker Node 3 Configuration
export OKD_WORKER_NODE_3_IP=100.10.33.103
export OKD_WORKER_NODE_3_HOSTNAME=okdworker3-node

#OKD Infra Node 1 Configuration
export OKD_INFRA_NODE_1_IP=100.10.33.104
export OKD_INFRA_NODE_1_HOSTNAME=okdinfra-node

#The  below setting will be used to access OKD console https://console.$DOMAIN:$API_PORT"
#By default we can login using the URL https://console.okd.abdoujarray.com:8443
#To access URL from your local system we need to configure master host in C:\Windows\System32\drivers\etc\hosts file as below
#100.10.33.100  console.okd.abdoujarray.com
export DOMAIN=okd.abdoujarray.com
export API_PORT=8443

#OKD Login Credentials
#By default admin/admin operator will be created and can be used to login to OKD console.
export OKD_USERNAME=admin
export OKD_PASSWORD=admin

#OKD Add-Ons
#Enable "True"  only if one of the VM has 1GB memory.
export INSTALL_METRICS=False

# Enable "True"  only one of the VM 2GB memory. 
export INSTALL_LOGGING=False
