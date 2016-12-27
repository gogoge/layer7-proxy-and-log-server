docker run -d \
  -p 80:80 -p 443:443 -p 9936:1936 \
  -v `pwd`/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro \
  --name haproxy \
  gogoge/haproxy

