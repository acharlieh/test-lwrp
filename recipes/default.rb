#
# Cookbook Name:: test-lwrp
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash 'foo' do
  code 'echo foo!'
  action [:nothing]
end

test_lwrp_inline 'bar'

test_lwrp_inline 'baz'
