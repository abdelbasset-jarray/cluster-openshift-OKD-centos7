# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Cluster okd master node
  config.vm.define "okd-master-node" do |master|
    okd-master.vm.box = "centos/7"
    okd-master.vm.hostname = "okd-master-node"
    okd-master.vm.box_url = "centos/7"
    okd-master.vm.network :private_network, ip: "100.10.33.100"
    okd-master.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.customize ["modifyvm", :id, "--name", "okd-master-node"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      service ssh restart
    SHELL
   
  end

  # Cluster okd-worker1-node
  config.vm.define "okd-worker1-node" do |worker1|
    okd-master.vm.box = "centos/7"
    okd-master.vm.hostname = "okd-worker1-node"
    okd-master.vm.box_url = "centos/7"
    okd-master.vm.network :private_network, ip: "100.10.33.101"
    okd-master.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.customize ["modifyvm", :id, "--name", "okd-worker1-node"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      service ssh restart
    SHELL
   
  end

    # Cluster okd-worker2-node
  config.vm.define "okd-worker2-node" do |worker2|
    okd-worker2.vm.box = "centos/7"
    okd-worker2.vm.hostname = "okd-worker2-node"
    okd-worker2.vm.box_url = "centos/7"
    okd-worker2.vm.network :private_network, ip: "100.10.33.102"
    okd-worker2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "okd-worker2-node"]
      v.customize ["modifyvm", :id, "--cpus", "1"]
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      service ssh restart
    SHELL
   
  end

    # Cluster okd worker3 node
  config.vm.define "okd-worker3-node" do |worker3|
    okd-worker3.vm.box = "centos/7"
    okd-worker3.vm.hostname = "okd-worker3-node"
    okd-worker3.vm.box_url = "centos/7"
    okd-worker3.vm.network :private_network, ip: "100.10.33.103"
    okd-worker3.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "okd-worker3-node"]
      v.customize ["modifyvm", :id, "--cpus", "1"]
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      service ssh restart
    SHELL
   
  end

  # Cluster okd infra node
  config.vm.define "okd-infra-node" do |infra|
    okd-infra.vm.box = "centos/7"
    okd-infra.vm.hostname = "okd-infra-node"
    okd-infra.vm.box_url = "centos/7"
    okd-infra.vm.network :private_network, ip: "100.10.33.104"
    okd-infra.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.customize ["modifyvm", :id, "--name", "okd-infra-node"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      service ssh restart
    SHELL
   
  end

end
