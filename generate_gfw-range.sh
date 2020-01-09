#!/usr/bin/sh

cat gfw | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\/[0-9][0-9]?' | ./aggregate-cidr-addresses.pl | python ./ipnet_to_iprange.py
