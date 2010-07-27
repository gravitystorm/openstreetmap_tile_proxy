package "squid"

service "squid" do
  action :enable
end

template "/etc/squid/squid.conf" do
  source "squid.conf.erb"
  owner "root"
  group "root"
  mode "600"
  notifies :reload, resources(:service => "squid"), :immediately
end
