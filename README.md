# irssi-docker
A minimal irssi container, including tzdata for worldwide timezone support

Running on the latest Alpine Linux release, with all updates applied.

alias irssi="docker run --rm --log-driver=none -it -e TERM -e TZ=Australia/Melbourne -u $(id -u):$(id -g) -v $HOME/.irssi:/home/user/.irssi:ro larandom/irssi"
