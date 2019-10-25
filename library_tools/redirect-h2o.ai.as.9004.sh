#!/usr/bin/env bash -xe
sudo apt-get update  && apt-get install -y \
     openssh-client \
     openssh-server \
     nginx
sudo systemctl stop ssh
sudo systemctl start ssh
sudo systemctl reload ssh
sudo systemctl status ssh
########
sudo echo '# try_files $uri $uri/ =404;' >> /etc/nginx/sites-available/default
sudo echo 'proxy_pass http://127.0.0.1:54321;' >> /etc/nginx/sites-available/default
#
echo '/home/joci/.ssh/thekey.pem' | ssh-keygen
chmod 400 /home/joci/.ssh/thekey.pem
sudo service nginx restart
ssh -i /home/joci/.ssh/thekey.pem -R 9004:localhost:54321 joci@$(hostname -I | cut -d' ' -f1)
########
