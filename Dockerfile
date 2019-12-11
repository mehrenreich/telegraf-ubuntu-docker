FROM ubuntu:18.04

ENV MAINTAINER="Michael Ehrenreich <michael.ehrenreich@mailbox.org>"

ENV DEBIAN_FRONTEND=noninteractive
ENV TELEGRAF_VERSION=1.12.6

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y curl iputils-ping snmp procps lm-sensors snmp-mibs-downloader

RUN curl -O https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_amd64.deb
RUN dpkg -i telegraf_${TELEGRAF_VERSION}-1_amd64.deb

COPY entrypoint.sh /entrypoint.sh
COPY mibs/*.txt /usr/share/snmp/mibs/

RUN find /usr/share/snmp/mibs/SYNOLOGY* -exec  basename {} \; | tee -a /usr/share/snmp/miblist.txt
RUN find /usr/share/snmp/mibs/UBNT* -exec  basename {} \; | tee -a /usr/share/snmp/miblist.txt

EXPOSE 8125/udp
EXPOSE 8092/udp
EXPOSE 8094/tcp

ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]
