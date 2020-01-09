#!/usr/bin/python

import netaddr
import fileinput

if __name__ == "__main__":
    for line in fileinput.input():
        ipnet = netaddr.IPNetwork(line.strip())
        print("{}-{}".format(ipnet[0], ipnet[-1]))
        