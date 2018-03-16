REGISTRY ?= dev.qa.sw.ru:30500
IMG_NAME=kbuild-env

PHONY := all alpine centos7 vz7
all: alpine centos7 vz7

alpine:
	docker build --rm -t $(REGISTRY)/$(IMG_NAME):alpine . -f Dockerfile.alpine
	docker push $(REGISTRY)/$(IMG_NAME):alpine

centos7:
	docker build --rm -t $(REGISTRY)/$(IMG_NAME):centos7 . -f Dockerfile.centos7
	docker push $(REGISTRY)/$(IMG_NAME):centos7

vz7:
	docker build --rm -t $(REGISTRY)/$(IMG_NAME):vz7 . -f Dockerfile.vz7
	docker push $(REGISTRY)/$(IMG_NAME):vz7
