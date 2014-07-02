#
# Cookbook Name:: shipyard-agent
# Recipe:: default
#
# Copyright (C) 2014 Mark O'Connor
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "docker"

docker_image 'shipyard/agent'

docker_container 'shipyard/agent' do
  detach true
  tty true
  env ["URL=#{node['shipyard']['url']}", "IP=#{node['network']['interfaces']['eth2']['addresses'].keys[1]}"]
  port '4500:4500'
  container_name 'shipyard_agent'
  volume "/var/run/docker.sock:/docker.sock"
end
