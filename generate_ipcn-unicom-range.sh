#!/usr/bin/sh


cat_all () {
    find ./ipblock-ipcn/ipcn/UNICOM -name "*.txt" | while read line
    do
        cat $line
    done
}

cat_all | ./aggregate-cidr-addresses.pl | python ./ipnet_to_iprange.py
