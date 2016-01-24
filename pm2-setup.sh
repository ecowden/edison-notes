# create an init.d folder to hold the pm2 init script
mkdir -p /etc/init.d

# Set up pm2 process manager
npm install -g pm2
pm2 startup
