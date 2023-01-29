Vagrant.configure("2") do |config|

  ##Master vm ###
    config.vm.define "master" do |master|
      master.vm.box = "ubuntu/xenial64"
      master.vm.hostname = "master"
      master.vm.network "private_network", ip: "192.168.56.30"
      master.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
      master.vm.provision "shell", path: "script.sh"
  end  
end
  ##node1 vm ###
     config.vm.define "node01" do |node01|
      node01.vm.box = "ubuntu/xenial64"
      node01.vm.hostname = "node01"
      node01.vm.network "private_network", ip: "192.168.56.12"
      node01.vm.provision "shell", inline: <<-SHELL
       sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config    
       sudo systemctl restart sshd.service
       sudo apt install python python3 -y
    SHELL
end    
  ##node2 vm  ####
    config.vm.define "node02" do |node02|
      node02.vm.box = "ubuntu/xenial64"
      node02.vm.hostname = "node02"
      node02.vm.network "private_network", ip: "192.168.56.89"
      node02.vm.provision "shell", inline: <<-SHELL
      sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config    
      sudo systemctl restart sshd.service
      sudo apt install python python3 -y
    SHELL
  end

  ##node3 vm  ###
    config.vm.define "node03" do |node03|
      node03.vm.box = "ubuntu/xenial64"
      node03.vm.hostname = "node03"
      node03.vm.network "private_network", ip: "192.168.56.14"
      node03.vm.provision "shell", inline: <<-SHELL
      sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config    
      sudo systemctl restart sshd.service
      sudo apt install python python3 -y
    SHELL
  end 

  ##node4 vm  ####
    config.vm.define "node04" do |node04|
      node04.vm.box = "ubuntu/xenial64"
      node04.vm.hostname = "node04"
      node04.vm.network "private_network", ip: "192.168.56.15"
      node04.vm.provision "shell", inline: <<-SHELL
      sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config    
      sudo systemctl restart sshd.service
      sudo apt install python python3 -y
    SHELL
  end
end