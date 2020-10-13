#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
        package = "apache2"
end
package 'apache2' do
	package_name package
	action :install
end
service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end
include_recipe 'apache::websites'

# Create directories

 directory '/opt/ftl/os_patching' do
   owner 'root'
     group 'root'
     mode '0755'
     action :create
     end

directory '/opt/ftl/os_patching/os_patch' do
             owner 'root'
               group 'root'
                 mode '0755'
                   action :create
                   end

                   directory '/opt/ftl/os_patching/pre_patch' do
                     owner 'root'
                       group 'root'
                         mode '0757'
                           action :create
                           end

                           directory '/opt/ftl/os_patching/post_patch' do
                             owner 'root'
                               group 'root'
                                 mode '0757'
                                   action :create
                                   end
