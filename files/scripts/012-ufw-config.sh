#!/bin/sh

sed -e 's|DEFAULT_FORWARD_POLICY=.*|DEFAULT_FORWARD_POLICY="ACCEPT"|g' \
    -i /etc/default/ufw

ufw limit ssh
ufw allow 443/tcp
ufw allow 80/tcp

# Disable external access to PostgresSQL
ufw deny 5432
# Disable ICMP
ufw deny icmp

ufw --force enable
