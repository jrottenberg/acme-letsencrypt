FROM haproxy:1.7.5-alpine


CMD ['crond', '&&', 'haproxy', '-f', '/haproxy.cfg']


# https://github.com/Neilpang/acme.sh/blob/master/Dockerfile#L3
RUN apk update -f \
  && apk --no-cache add -f \
  openssl \
  curl \
  && rm -rf /var/cache/apk/*

RUN  curl https://get.acme.sh | sh && ln -s /dev/stdout /root/.acme.sh/acme.sh.log
