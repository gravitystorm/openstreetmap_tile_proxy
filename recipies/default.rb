package "squid3"

service "squid3" do
  action :enable
end

template "/etc/squid3/squid.conf" do
  source "squid.conf.erb"
  owner "root"
  group "root"
  mode "600"
  notifies :reload, resources(:service => "squid3"), :immediately
end
