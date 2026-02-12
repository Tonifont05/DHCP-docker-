FROM docker.cloudsmith.io/isc/docker/kea-dhcp4:2.6.0

RUN mkdir -p /etc/kea /var/lib/kea
COPY kea-dhcp4.conf /etc/kea/kea-dhcp4.conf
EXPOSE 67/udp
CMD ["kea-dhcp4", "-c", "/etc/kea/kea-dhcp4.conf"]
