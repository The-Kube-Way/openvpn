FROM alpine:latest

LABEL Maintainer "The-Kube-Way (https://github.com/The-Kube-Way/openvpn)"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories && \
    apk add --no-cache --update openvpn iptables easy-rsa && \
    ln -s /usr/share/easy-rsa/easyrsa /usr/local/bin

COPY bin/ /usr/local/bin

ENTRYPOINT [ "sh", "/usr/local/bin/run.sh" ]
