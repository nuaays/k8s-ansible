# -*- mode: ruby -*-
# vi: set ft=ruby :

nodes_num=4
box_name="centos7.5"

Vagrant.configure("2") do |config|

  (1..nodes_num).each do |i|
    config.vm.define "kube#{i}" do |s|
      s.vm.box = box_name
      s.vm.box_check_update = false
      s.vm.hostname = "kube#{i}"
      s.ssh.forward_agent = true

      s.vm.provider :virtualbox do |vb|
        vb.name = "kube#{i}"
        vb.customize ["modifyvm", :id, "--vram", "16"]
        vb.customize ["modifyvm", :id, "--memory", "1500", "--cpus", "1",  "--cpuexecutioncap", "50" ]
      end


      #s.vm.provision "file", source: "./packages", destination: "/tmp/packages"

      s.vm.provision "shell", privileged: true, inline: <<-SHELL
        #sudo yum install -y net-tools-2.0-0.22.20131004git.el7.x86_64
        #sudo yum localinstall http://mirrors.aliyun.com/epel/7/x86_64/Packages/h/htop-2.0.2-1.el7.x86_64.rpm
        sudo echo vagrant:vagrant |chpasswd
        sudo echo root:vagrant |chpasswd
        sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
        sudo sed -i 's/PasswordAuthentication no/#PasswordAuthentication no/'   /etc/ssh/sshd_config
        sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
        sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/'               /etc/ssh/sshd_config
        sudo systemctl restart sshd.service
      SHELL

      s.vm.network "private_network", ip: "192.168.57.20#{i}", netmask: "255.255.255.0", auto_config: true
    end

  end


end
