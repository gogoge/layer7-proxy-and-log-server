docker run -d \
  -p 80:80 -p 443:443 -p 8888:8888 \
  -e DOMAIN1=$DOMAIN1 \
  -e EMAIL1=$EMAIL1 \
  --restart=always \
  --name haproxy \
  gogoge/haproxy
