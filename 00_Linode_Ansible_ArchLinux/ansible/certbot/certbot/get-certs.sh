#!/usr/bin/env bash

set -x

certbot certonly \
    --quiet \
    --agree-tos \
    --email javier.palomino-sanchez@outlook.com \
    --dns-linode \
    --dns-linode-credentials /root/certbot/credentials.ini \
    --dns-linode-propagation-seconds 1000 \
    # --dns-cloudflare\
    # --dns-cloudflare-credentials /root/certbot/credentials.ini \
    # --dns-cloudflare-propagation-seconds 1000 \
    --domain javips.digital \
    # --domain www.javips.digital

certbot certonly \
    --quiet \
    --agree-tos \
    --email javier.palomino-sanchez@outlook.com \
    --dns-linode \
    --dns-linode-credentials /root/certbot/credentials.ini \
    --dns-linode-propagation-seconds 1000 \
    # --dns-cloudflare\
    # --dns-cloudflare-credentials /root/certbot/credentials.ini \
    # --dns-cloudflare-propagation-seconds 1000 \
    --domain 'mail.javips.digital'


# If you need multiple domains in iRedMail
# uncomment the section below and adjust '--domain'.
# You need separate TLS certificates for multiple
# domains in iRedMail because Postfix/Dovecot
# can't handle wildcard TLS certificates in an easy manner.

# In LXC config for iRedMail you will then mount the
# 'mails-combined' TLS certificate and adjust
# Postfix/Dovecot configurations.

#certbot certonly \
#    --quiet \
#    --agree-tos \
#    --email your@email.com \
#    --authenticator dns-linode \
#    --dns-linode-credentials /root/certbot/credentials.ini \
#    --dns-linode-propagation-seconds 1000 \  # I've encountered errors without this, you might have more luck.
#    --domain 'mail.$domain1' \
#    --domain 'mail.$domain2' \
#    --domain 'mail.$domain3' \  # etc...
#    --cert-name 'mails-combined'