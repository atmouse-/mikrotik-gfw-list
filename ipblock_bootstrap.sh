#!/usr/bin/sh

rm -rf ipblock-ipcn
git clone --quiet --depth=1 --single-branch --branch archive https://github.com/atmouse-/ipblock-ipcn.git
if [ $? -ne 0 ]
then
    exit 1
fi
