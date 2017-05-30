#!/bin/sh


cat /root/.acme.sh/${DOMAIN}/fullchain.cer /root/.acme.sh/${DOMAIN}/${DOMAIN}.key > /root/.acme.sh/${DOMAIN}/${DOMAIN}.pem


haproxy -f /mnt/haproxy.cfg -sf $(cat /var/run/haproxy.pid)
