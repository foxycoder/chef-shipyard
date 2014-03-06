#
# Cookbook Name:: shipyard
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
include_recipe "docker"

# FIX: https://github.com/bflad/chef-docker/issues/75
package "linux-image-extra-#{node[:kernel][:release]}" do
  notifies :restart, 'service[docker]', :immediately
end

docker_image 'shipyard/deploy'

docker_container 'shipyard/deploy' do
  detach true
  tty true
  volume "/var/run/docker.sock:/docker.sock"
  command "setup"
end

