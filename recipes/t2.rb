#
# Cookbook:: test-cookbook
# Recipe:: t2.rb
#
# Copyright:: 2024, The Authors, All Rights Reserved.
#
file "/tim.txt" do
content "this is testing file"
action :create
end

package "tree" do
  action :install
end

package "apache2" do
action :install
end

file "/var/www/html/index.html" do
content "this is using chef and ruby"
action :create
end

service "httpd" do
action [:enable, :start]
end
