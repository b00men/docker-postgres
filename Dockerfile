FROM postgres:10-alpine

RUN apk add --update git openssh-client && rm -rf /var/cache/apk/*

RUN mkdir /root/.ssh && chmod 600 /root/.ssh && \
	ln -s /run/secrets/id_rsa /root/.ssh/id_rsa

COPY ssh-config /root/.ssh/config
COPY auto-post-provisioning.sh /docker-entrypoint-initdb.d/auto-post-provisioning.sh
