#
# Cookbook Name:: shipyard-agent
# Recipe:: default
#
# Copyright (C) 2014 Mark O'Connor
# 
# All rights reserved - Do Not Redistribute
#

remote_file '/usr/local/bin/shipyard-agent' do
  source 'https://github.com/shipyard/shipyard-agent/releases/download/v0.2.4/shipyard-agent'
  checksum 'd7ee990f3e024f2c16c9ad16670866586a7936743ac26f8a46be4e8a78b2a9bc'
  owner 'root'
  group 'root'
  mode '0755'
end

