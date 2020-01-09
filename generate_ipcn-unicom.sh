#!/usr/bin/sh

cat_all () {
    find ./ipblock-ipcn/ipcn/UNICOM -name "*.txt" | while read line
    do
        cat $line
    done
}

cat_all | ./aggregate-cidr-addresses.pl | while read line
do
    echo "/ip firewall address-list add list=ipcn-unicom address=$line"
done
