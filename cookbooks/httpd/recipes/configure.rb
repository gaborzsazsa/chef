template "/etc/httpd/conf/httpd.conf" do
	source "httpd.conf.erb"
	owner "root"
	group "root"
	mode 0644
end

directory "/var/www/brog.hu" do
	owner "apache"
	group "apache"
	mode "0755"
end

service "httpd" do
	action :restart
end
