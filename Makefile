.PHONY: build
.PHONY: push
.PHONY: all

build:
	docker build -t oliverisaac/alpine-nettools:$$( date +%Y.%m.%d )  .

push:
	docker push oliverisaac/alpine-nettools:$$( date +%Y.%m.%d )
	docker tag oliverisaac/alpine-nettools:$$( date +%Y.%m.%d ) oliverisaac/alpine-nettools:latest
	docker tag oliverisaac/alpine-nettools:$$( date +%Y.%m.%d ) oliverisaac/nettools:latest
	docker push oliverisaac/alpine-nettools:latest
	docker push oliverisaac/nettools:latest


all: build push
