#
# Cookbook Name:: shipyard-server
# Recipe:: default
#
# Copyright (C) 2014 Mark O'Connor
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "docker"

docker_image 'shipyard/deploy'

docker_container 'shipyard/deploy' do
  detach true
  tty true
  volume "/var/run/docker.sock:/docker.sock"
  command "setup"
end

