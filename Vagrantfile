Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian9"
  config.disksize.size = '10GB'
config.vm.provider "virtualbox" do |vb|
  vb.memory = 2048
  vb.cpus = 2
config.vm.provision "shell", path: "prog.sh"
end
end