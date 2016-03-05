sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/etc/nginx.conf /etc/nginx/sites-enabled/nginx-s.conf
sudo /etc/init.d/nginx restart

sudo rm /etc/gunicorn.d/*
sudo ln -s /home/box/etc/gunicorn.conf /etc/gunicorn.d/hello.py
sudo ln -s /home/box/etc/ask.conf /etc/gunicorn.d/ask.py
sudo /etc/init.d/gunicorn restart
