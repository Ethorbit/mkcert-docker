# mkcert-docker
Run mkcert from a container.

Usage:
```
docker run -it -v /usr/local/share/ca-certificates:/usr/local/share/ca-certificates -v $PWD:/mnt --rm --name mkcert ethorbit/mkcert:latest /bin/sh -c 'mkcert -install && mkcert -cert-file /mnt/mkcert.pem -key-file /mnt/mkcert.key website.local'
```
