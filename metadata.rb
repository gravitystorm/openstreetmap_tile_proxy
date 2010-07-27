maintainer "Serge Wroclawski"
maintainer_email "emacsen@gmail.com"
description "Configures a squid proxy as an OSM tileserver proxy"
version "0.1"
license "Apache 2.0"
recipe "openstreetmap:tile:proxy"

%w(ubuntu debian redhat centos).each do |os|
  supports os
end
