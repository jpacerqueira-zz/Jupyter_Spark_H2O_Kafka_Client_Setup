sudo apt-get update
sudo apt-get install openssh-client
sudo apt-get install openssh-server
sudo systemctl stop ssh
sudo systemctl start ssh
sudo systemctl reload ssh
sudo systemctl status ssh
########
sudo apt-get install nginx
sudo echo '# try_files $uri $uri/ =404;' >> /etc/nginx/sites-available/default
sudo echo 'proxy_pass http://127.0.0.1:54321;' >> /etc/nginx/sites-available/default

echo '/home/joci/.ssh/thekey.pem' | ssh-keygen
chmod 400 /home/joci/.ssh/thekey.pem
sudo service nginx restart
ssh -i /home/joci/.ssh/thekey.pem -R 9004:localhost:54321 joci@$(hostname -I | cut -d' ' -f1)
########
