#!/bin/bash

curl -L -s -o /etc/nginx/tls/_.t.isucon.pw.crt https://github.com/KOBA789/t.isucon.pw/releases/latest/download/fullchain.pem
curl -L -s -o /etc/nginx/tls/_.t.isucon.pw.key https://github.com/KOBA789/t.isucon.pw/releases/latest/download/key.pem

chmod 0600 /etc/nginx/tls/_.t.isucon.pw.crt
chmod 0600 /etc/nginx/tls/_.t.isucon.pw.key

sudo systemctl reload nginx