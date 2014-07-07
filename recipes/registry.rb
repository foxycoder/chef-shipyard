if node[:shipyard][:registry][:private_url]
  registry_credentials = Chef::EncryptedDataBagItem.load('docker', 'registry')
  docker_registry node[:shipyard][:registry][:private_url] do
    username registry_credentials['username']
    password registry_credentials['password']
  end
end
