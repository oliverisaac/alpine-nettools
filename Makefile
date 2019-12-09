.PHONY: build
.PHONY: push
.PHONY: all

build:
	docker build -t oliverisaac/alpine-nettools:$$( date +%Y.%m.%d )  .

push:
	docker push oliverisaac/alpine-nettools:$$( date +%Y.%m.%d )


all: build push
