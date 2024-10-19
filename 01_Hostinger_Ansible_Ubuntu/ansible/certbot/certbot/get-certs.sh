#!/usr/bin/env bash

set -x

certbot certonly \
    --quiet \
    --agree-tos \
    --email javier.palomino-sanchez@outlook.com \
    --dns-cloudflare \
    --dns-cloudflare-credentials /root/certbot/credentials.ini \
    --dns-cloudflare-propagation-seconds 1000 \
    --domain javips.digital \
    --domain www.javips.digital