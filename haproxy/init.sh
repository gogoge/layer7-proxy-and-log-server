if [ ! -f "/etc/letsencrypt/keys/0000_key-certbot.pem" ]; then
  echo "starting certbot"
  certbot certonly --standalone --redirect --test-cert --non-interactive --agree-tos --email $EMAIL1 -d $DOMAIN1
  certbot renew --dry-run
  while [ ! -f /etc/letsencrypt/live/$DOMAIN1/privkey.pem ]
  do
    sleep 2
  done
  cat /etc/letsencrypt/live/$DOMAIN1/cert.pem /etc/letsencrypt/live/$DOMAIN1/fullchain.pem /etc/letsencrypt/live/$DOMAIN1/privkey.pem | tee -a /total.pem
else
  echo "skip certbot"
fi
haproxy -f /usr/local/etc/haproxy/haproxy.cfg
