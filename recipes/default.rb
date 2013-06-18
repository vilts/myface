#
# Cookbook Name:: vilts-myface
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'apache2'
 
service 'apache2' do
  action [:enable, :start]
end

