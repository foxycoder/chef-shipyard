#
# Cookbook Name:: docker_fix
# Recipe:: default
#
# Copyright (C) 2014 Mark O'Connor
# 
# All rights reserved - Do Not Redistribute
#

#
# FIX: https://github.com/bflad/chef-docker/issues/75
#
package "linux-image-extra-#{node[:kernel][:release]}" do
  notifies :restart, 'service[docker]', :immediately
end

