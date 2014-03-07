#
# Cookbook Name:: shipyard
# Recipe:: default
#
# Copyright (C) 2014 Mark O'Connor
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "docker"
include_recipe "shipyard::docker_fix"
include_recipe "shipyard::shipyard_server"
include_recipe "shipyard::shipyard_agent"

