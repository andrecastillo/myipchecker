# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|

  config.vm.box = 'ubuntu/trusty64'

  config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4096"]
  end

  # The environment key to set
  config.host_path.env_key = "VAGRANT_HOST_PATH"

  # Temp file to save path to
  config.host_path.path_file = "/tmp/.vagrant-host-path"

  # Profile script path
  config.host_path.profile_path = "/etc/profile.d/vagrant-host-path.sh"

  config.vm.network :forwarded_port, guest: 80, host: 8000

  config.vm.provision :shell, privileged: false, path: 'bootstrap.sh', keep_color: true
end
