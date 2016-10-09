
Vagrant.configure("2") do |config|
    config.vm.box = "debian/jessie64"
    config.vm.network :private_network, ip: "192.168.77.10"

    if (/linux/ =~ RUBY_PLATFORM) != nil
        config.vm.synced_folder "./", "/vagrant", id: "vagrant-root", nfs: true, :linux__nfs_options => ['rw','no_subtree_check','all_squash','async']
    else
        config.vm.synced_folder "./", "/vagrant", id: "vagrant-root", :nfs => true
    end

    config.vm.provision "shell" do |shell|
      shell.inline = "apt-get update && apt-get install -qqy puppet-common && sudo /etc/init.d/rpcbind start"
    end

    config.vm.provision "puppet", run: "always" do |puppet|
        #puppet.synced_folder_type = "nfs"
        puppet.hiera_config_path = "puppet/hiera.yaml"
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "default.pp"
        puppet.module_path = "puppet/modules"
        puppet.options = "--verbose --debug"


    end
end
