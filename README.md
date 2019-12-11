# telegraf-ubuntu-docker

Telegraf Dockerfile, MIBs and configuration samples to make Telegraf work with Synology SNMP and Unifi SNMP.

## MIBs

- SYNOLOGY-DISK-MIB.txt
- SYNOLOGY-EBOX-MIB.txt
- SYNOLOGY-FLASHCACHE-MIB.txt
- SYNOLOGY-ISCSILUN-MIB.txt
- SYNOLOGY-RAID-MIB.txt
- SYNOLOGY-SERVICES-MIB.txt
- SYNOLOGY-SHA-MIB.txt
- SYNOLOGY-SMART-MIB.txt
- SYNOLOGY-SPACEIO-MIB.txt
- SYNOLOGY-STORAGEIO-MIB.txt
- SYNOLOGY-SYSTEM-MIB.txt
- SYNOLOGY-UPS-MIB.txt
- UBNT-MIB.txt
- UBNT-UniFi-MIB.txt

## Telegraf configs

* telegraf-synology.conf
* telegraf-unifi-ap-if.conf
* telegraf-unifi-ap-radio.conf
* telegraf-unifi-ap.conf

## References

* Original Dockerfile: https://github.com/influxdata/influxdata-docker/tree/master/telegraf
* Original Telegraf config sample for Synology: https://www.reddit.com/r/homelab/comments/bbodsh/huge_telegraf_config_file_for_capturing_snmp/
* MIBs and configuration for using with Unifi access points: http://www.roberthartung.de/monitoring-unifi-aps-using-snmp-telegraf-influx-and-grafana/
