# hyperapp-nghttpx


## Usage

```
docker run -d -v /srv/docker/certs:/certs hyperapp/nghttpx
```

### ENV

- FRONTEND: nghttpx frontend
- BACKEEND: nghttpx backend
- DOMAIN: tls domain, will search `$DOMAIN.{key,crt} under `/certs/`
