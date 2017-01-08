# layer7 proxy server with rsyslog server

1. add domain and email to env variable

```
export DOMAIN1="xxx.xx.xxx.xxx"
export EMAIL1="xxx@xxx.xxx"
```

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
