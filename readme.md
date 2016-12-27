# layer7 proxy server with rsyslog server


1. modify the DOMAIN_NAME in `haproxy.cfg`
2. build and run

build & run rsyslog

```
./rsyslog/build.sh
./rsyslog/run.sh
```


build & run haproxy

```
./haprxy/build.sh
./haprxy/run.sh
```

# monitor 

```
docker logs rsyslog
```
