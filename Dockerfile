FROM debian:latest

RUN apt-get update && \
    apt-get install -y dnsmasq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["dnsmasq", "--no-daemon", "-C", "/etc/dnsmasq.conf"]