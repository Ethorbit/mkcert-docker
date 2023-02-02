FROM alpine:latest
RUN apk add --no-cache go git nss-tools &&\
    cd /root &&\
    git clone https://github.com/FiloSottile/mkcert &&\
    cd /root/mkcert &&\
    go build -ldflags "-X main.Version=$(git describe --tags)" &&\
    mv ./mkcert /usr/local/bin/ &&\
    rm -rf /root/mkcert/
CMD ["mkcert"]
