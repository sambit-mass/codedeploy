#!/bin/bash
echo "Copying site to nginx directory..."
sudo cp /home/ubuntu/app/index.html /var/www/html/index.html
sudo systemctl restart nginx
