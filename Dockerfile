FROM alpine:edge
RUN apk add --no-cache nghttp2 openssl ca-certificates

ENV FRONTEND=0.0.0.0,443
ENV BACKEEND=backend,8080
ENV DOMAIN=example.com
ENV OPTIONS=""

EXPOSE 443
VOLUME /certs/

CMD nghttpx -f $FRONTEND -b $BACKEEND $OPTIONS /certs/${DOMAIN}.key /certs/${DOMAIN}.crt
