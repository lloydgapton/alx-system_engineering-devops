#!/usr/bin/env bash
#for configuration of servers with their name

sudo apt-get update
sudo apt-get -y install nginx
sudo ufw allow 'Nginx HTTP'
sudo chmod -R 755 /var/www
sudo echo 'Hello World' > /var/www/html/index.html

new_config=\
"server {
        listen 80 default_server;
        listen [::]:80 default_server;
               root /var/www/html;
        index index.html index.htm index.nginx-debian.html;
        server_name _;
	add_header X-Served-By \$hostname;
        location / {
                try_files \$uri \$uri/ =404;
        }
        error_page 404 /404.html;
        location  /404.html {
            internal;
        }
        
        if (\$request_filename ~ redirect_me){
            rewrite ^ https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;
        }
}
"
echo "Ceci n'est pas une page" > /var/www/html/404.html
sudo bash -c "echo -e '$new_config' > /etc/nginx/sites-enabled/default"

if [ "$(pgrep -c nginx)" -le 0 ];
then
    sudo service nginx start
else
    sudo service nginx restart
fi;
