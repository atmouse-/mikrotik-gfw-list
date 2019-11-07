#!/usr/bin/sh

rm -rf ipblock-ipcn
git clone --quiet --depth=1 --single-branch --branch gh-pages https://github.com/atmouse-/ipblock-ipcn.git
if [ $? -ne 0 ]
then
    exit 1
fi

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
