FROM alpine:latest AS release

LABEL "Author"="Oliver Isaac <oisaac@gmail.com>"

RUN apk --update add \
    openssl \
    ngrep \
    git \
    vim \
    nmap \
    rsync \
    openssh \
    nmap-scripts \
    curl \
    tcpdump \
    bind-tools \
    jq \
    nmap-ncat \
    kubectl \
    bash \
    busybox-extras \
    && rm -rf /var/cache/apk/*

CMD ["bash", "-l", "-o", "vi"]
