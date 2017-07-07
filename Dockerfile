FROM alpine:edge
RUN apk add --no-cache nghttp2 openssl ca-certificates

ENV FRONTEND=0.0.0.0,8443
ENV BACKEEND=127.0.0.1,8080
ENV DOMAIN=example.com
ENV OPTIONS=""

VOLUME /certs/
CMD nghttpx -f $FRONTEND -b $BACKEEND /certs/${DOMAIN}.key /certs/${DOMAIN}.crt $OPTIONS
