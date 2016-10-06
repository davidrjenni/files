```
sudo ifconfig lo0 alias 172.16.123.1
docker run --rm --add-host="docker.local:172.16.123.1" davidrjenni/wrk2 <options> <url>
```
