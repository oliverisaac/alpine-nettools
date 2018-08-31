FROM alpine:3.8
# Originally from Rory McCune <rorym@mccune.org.uk>
MAINTAINER Oliver Isaac <oisaac@gmail.com>

RUN apk --update add ngrep vim nmap nmap-scripts curl tcpdump bind-tools jq nmap-ncat bash && rm -rf /var/cache/apk/*

ENTRYPOINT ["bash", "-l"]
CMD ["-o", "vi"]
