FROM alpine:latest

ENV HOME /home/user
ENV LANG C.UTF-8

RUN set -eux; \
	adduser -u 1000 -D -h "$HOME" user; \
	chown -R user:user "$HOME"; \
	apk --no-cache -U upgrade; \
	apk add --no-cache \
		irssi \
		tzdata

WORKDIR $HOME

USER user
ENTRYPOINT ["irssi"]
