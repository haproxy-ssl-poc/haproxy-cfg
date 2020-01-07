#!/bin/sh
docker run -d -p443:443 -p80:80 -p1936:1936 -v $(pwd)/certs:/etc/certs -v $(pwd)/cfg/haproxy.cfg:/etc/haproxy/haproxy.cfg --network ha --rm --name ilb haproxy:1.9.10 haproxy -f /etc/haproxy/haproxy.cfg
