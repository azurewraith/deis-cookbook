#
# Cookbook Name:: deis
# Recipe:: controller
#
# Copyright 2013, OpDemand LLC
#

include_recipe 'deis::default'
include_recipe 'deis::discovery'
include_recipe 'deis::registry'
include_recipe 'deis::logger'
include_recipe 'deis::database'
include_recipe 'deis::cache'
include_recipe 'deis::server'
include_recipe 'deis::builder'
# include_recipe 'deis::proxy'
