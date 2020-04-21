# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Cluster okd master node
  config.vm.define "okdmaster-node" do |okdmaster|
    okdmaster.vm.box = "centos/7"
    okdmaster.vm.hostname = "okdmaster-node"
    okdmaster.vm.box_url = "centos/7"
    okdmaster.vm.network :private_network, ip: "100.10.33.100"
    okdmaster.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.customize ["modifyvm", :id, "--name", "okdmaster-node"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      service ssh restart
    SHELL
   
  end

  # Cluster okdworker1-node
  config.vm.define "okdworker1-node" do |okdworker1|
    okdworker1.vm.box = "centos/7"
    okdworker1.vm.hostname = "okdworker1-node"
    okdworker1.vm.box_url = "centos/7"
    okdworker1.vm.network :private_network, ip: "100.10.33.101"
    okdworker1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "okdworker1-node"]
      v.customize ["modifyvm", :id, "--cpus", "1"]
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      service ssh restart
    SHELL
   
  end

    # Cluster okdworker2-node
  config.vm.define "okdworker2-node" do |okdworker2|
    okdworker2.vm.box = "centos/7"
    okdworker2.vm.hostname = "okdworker2-node"
    okdworker2.vm.box_url = "centos/7"
    okdworker2.vm.network :private_network, ip: "100.10.33.102"
    okdworker2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "okdworker2-node"]
      v.customize ["modifyvm", :id, "--cpus", "1"]
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      service ssh restart
    SHELL
   
  end

    # Cluster okd worker3 node
  config.vm.define "okdworker3-node" do |okdworker3|
    okdworker3.vm.box = "centos/7"
    okdworker3.vm.hostname = "okdworker3-node"
    okdworker3.vm.box_url = "centos/7"
    okdworker3.vm.network :private_network, ip: "100.10.33.103"
    okdworker3.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "okdworker3-node"]
      v.customize ["modifyvm", :id, "--cpus", "1"]
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      service ssh restart
    SHELL
   
  end

  # Cluster okd infra node
  config.vm.define "okdinfra-node" do |okdinfra|
    okdinfra.vm.box = "centos/7"
    okdinfra.vm.hostname = "okdinfra-node"
    okdinfra.vm.box_url = "centos/7"
    okdinfra.vm.network :private_network, ip: "100.10.33.104"
    okdinfra.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.customize ["modifyvm", :id, "--name", "okdinfra-node"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      service ssh restart
    SHELL
   
  end

end
