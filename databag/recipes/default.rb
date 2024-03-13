#
# Cookbook:: databag
# Recipe:: default
#
# Copyright:: 2024, The Authors, All Rights Reserved.
cookbook_file '/etc/cinc/encrypted_data_bag_secret' do
  source 'encrypted_data_bag_secret'
  owner 'root'
  group 'root'
  mode '0600' # Ensure the file is not readable by non-root users
  action :create
end
