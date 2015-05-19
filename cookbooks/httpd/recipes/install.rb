package "httpd" do
	action :install
end

service "httpd" do
	action :restart
end
