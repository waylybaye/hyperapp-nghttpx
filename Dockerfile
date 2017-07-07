FROM alpine:edge
RUN apk add --no-cache nghttp2 openssl ca-certificates

ENV FRONTEND=*,443
ENV BACKEEND=backend,8080
ENV DOMAIN=example.com
ENV OPTIONS=""

EXPOSE 443
VOLUME /certs/

CMD nghttpx --http2-proxy -f $FRONTEND -b $BACKEEND $OPTIONS /certs/${DOMAIN}.key /certs/${DOMAIN}.crt
