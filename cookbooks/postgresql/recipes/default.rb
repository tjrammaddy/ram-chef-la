#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
	package 'postgresql-server' do
		    notifies :run, 'execute[postgresql-init]'
	end
	execute 'postgresql-init' do
		Command 'postgresql-setup initdb'
		Action :nothing
	end
	Service 'postgresql' do
		 action [:enable, :start]
	end

