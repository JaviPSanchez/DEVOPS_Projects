#!/usr/bin/env bash

set -x

certbot certonly \
    --quiet \
    --agree-tos \
    --email my_email \
    --dns-cloudflare \
    --dns-cloudflare-credentials /root/certbot/credentials.ini \
    --dns-cloudflare-propagation-seconds 1000 \
    --domain my_page.com \
    --domain www.my_page.com