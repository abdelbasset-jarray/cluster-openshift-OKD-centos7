How-to-install OpenShift Origin (OKD) Cluster on CentOS 7

1- Prérequis
   - Git
2- VMs provisionnées
Name	                IP	        OS	RAM	CPU
okd-master-node	        100.10.33.100	CentOS7	4GB	2
okd-worker-node-1	100.10.33.101	CentOS7	4GB	2
okd-worker-node-2	100.10.33.102	CentOS7	4GB	2
okd-worker-node-3	100.10.33.103	CentOS7	2GB	2
okd-infra-node-1	100.10.33.104	CentOS7	2GB	2

3- Déployer le cluster OpenShift:

Étape 1:

- Mettre à jour le système :  $ yum update -y
- Mettre à jour les noms d'hôte pour tous les nœuds : $ yum /etc/hostname

Étape 2:

Activer SELINUX = appliquer sur tous les nœuds maître / travailleur / infra
$ yum /etc/selinux/config

Nous pouvons vérifier l'état en exécutant la commande ci-dessous: $ sestatus

Étape 3:

Redémarrez tous les nœuds master/worker/infra nodes:  $ reboot

Étape 4:
Extraire le code (git clone https://github.com/abdoujarray/cluster-openshift-OKD-centos7.git ) 
Configurer le fichier settings.sh

Étape 5:

Copiez le dossier "cluster-openshift-OKD-centos7" sur tous les nœuds master/worker nodes
Le copie dans le dossier racine et les autorisations d'exécution peuvent être appliqués en exécutant la commande ci-dessous:

Commande: $ chmod +x -R cluster-openshift-OKD-centos7

Étape 6:

Exécutez le script ci-dessous sur tous master/worker/infra nodes : $ cluster-openshift-OKD-centos7/install_prerequisites.sh

Étape 7:

Activez SSH pour communiquer tous les autres "worker/infra nodes" de "master" sans "password". Toutes les commandes ci-dessous doivent être exécutées uniquement sur le nœud "master".

- 100.10.33.101 (okd-master-node)
 
  $ ssh-keygen -t rsa

- okd-master-node

   $ cat ~/.ssh/id_rsa.pub | ssh root@100.10.33.100 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

- okd-worker-node-1

    $ cat ~/.ssh/id_rsa.pub | ssh root@100.10.33.101 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

- okd-worker-node-2

    $ cat ~/.ssh/id_rsa.pub | ssh root@100.10.33.102 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

- okd-worker-node-3

    $ cat ~/.ssh/id_rsa.pub | ssh root@100.10.33.103 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

- okd-infra-node-4

    $ cat ~/.ssh/id_rsa.pub | ssh root@100.10.33.104 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
		

** Exécuter le script ci-dessous uniquement sur le nœud master:

    100.10.33.100 (okd-master-node)
		
  	$ cluster-openshift-OKD-centos7/install_master.sh

Etape 8:

- Vérifiez que l'installation okd est réussie en exécutant ci-dessous deux commandes pour voir tous les nœuds et pods.
	
	$ oc login -u admin -p admin https://console.okd.abdoujarray.com:8443

  $ oc get projects
	
4 - Accéder au console :

    https://console.okd.abdoujrray.com:8443

