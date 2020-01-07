#!/bin/sh
docker run -it -p443:443 -p80:80 -p1936:1936 -v /Users/abderrazak.bouadma/job/zoubia/cert:/etc/certs -v /Users/abderrazak.bouadma/job/zoubia/haproxy/haproxy.cfg:/etc/haproxy/haproxy.cfg --network ha --rm --name ilb haproxy:1.9.10 haproxy -f /etc/haproxy/haproxy.cfg
