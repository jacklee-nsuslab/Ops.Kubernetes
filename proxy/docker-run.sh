#!/bin/sh

docker run --name kube-apiserver-proxy-nginx \
-v $(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro \
-v $(pwd)/logs/:/var/log/nginx/ \
-v $(pwd)/certs:/certs/ \
--add-host hostaddress:192.168.0.242 \
-p 443:443 -d \
nginx
