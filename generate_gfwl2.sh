#!/usr/bin/sh

cat_all () {
    find ./ipblock-ipcn/ipcdn ./ipblock-ipcn/ipcloud -name "*.txt" | while read line
    do
        cat $line
    done
}

cat_all | ./aggregate-cidr-addresses.pl | while read line
do
    echo "/ip firewall address-list add list=gfwl2 address=$line"
done
