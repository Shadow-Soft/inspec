Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/xenial64'

  config.vm.provider 'virtualbox' do |vb|
    vb.cpus = '2'
    vb.memory = '1536'
  end

  config.vm.provision 'shell', inline: 'apt-get update && apt-get install -y rubygems ruby-dev gcc make'
  config.vm.provision 'shell', inline: 'gem install rake --no-document'
  config.vm.provision 'shell', inline: 'cd /vagrant; gem build inspec.gemspec; gem install inspec-*.gem; inspec init profile foo; inspec exec foo --format=html > foo.html'
end
