#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2024, The Authors, All Rights Reserved.
#
file "/new_testfile" do
  content "this is a test file for testing chef. edited now"
action :create
end
