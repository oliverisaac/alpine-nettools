FROM alpine:latest
# Originally from Rory McCune <rorym@mccune.org.uk>
MAINTAINER Oliver Isaac <oisaac@gmail.com>

RUN apk --update add openssl ngrep vim nmap nmap-scripts curl tcpdump bind-tools jq nmap-ncat bash busybox-extras && rm -rf /var/cache/apk/*

CMD ["bash", "-l", "-o", "vi"]
