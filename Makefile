REGISTRY ?= dev.qa.sw.ru:30500
REPO=kbuild-env

PHONY := all alpine centos7 vz7
all: alpine centos7 vz7

alpine:
	docker build --rm -t $(REGISTRY)/$(REPO):alpine . -f Dockerfile.alpine
	docker push $(REGISTRY)/$(REPO):alpine

centos7:
	docker build --rm -t $(REGISTRY)/$(REPO):centos7 . -f Dockerfile.centos7
	docker push $(REGISTRY)/$(REPO):centos7

vz7:
	docker build --rm -t $(REGISTRY)/$(REPO):vz7 . -f Dockerfile.vz7
	docker push $(REGISTRY)/$(REPO):vz7
