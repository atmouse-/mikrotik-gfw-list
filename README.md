You can add comment to that route and remove by comment
```
/ip route remove [find comment="tw2-route"]
```

or remove by dst-address
```
/ip route remove [find dst-address="207.xx.xxx.xx/32"]
```

Update firewall address-list
```
/ip firewall address-list remove [/ip firewall address-list find list="gfwl2"]
scp gfwl2 admin@10.0.0.6:
/import gfwl2
```