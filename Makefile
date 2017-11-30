-include env_make

SOLR_VER ?= 7.1
SEARCH_API_SOLR_VER ?= 8.x-2.0-alpha2

# Get Drupal version (first symbol) from search api solr version.
$(eval EXCEPT_FIRST_SYMBOL := $$$(SEARCH_API_SOLR_VER))
DRUPAL_VER := $(subst $(EXCEPT_FIRST_SYMBOL),,$(SEARCH_API_SOLR_VER))

TAG ?= $(DRUPAL_VER)-$(SOLR_VER)
FROM_TAG = $(SOLR_VER)

ifneq ($(FROM_STABILITY_TAG),)
    FROM_TAG := $(FROM_TAG)-$(FROM_STABILITY_TAG)
endif

REPO = wodby/drupal-solr
NAME = drupal-solr-$(DRUPAL_VER)-$(SOLR_VER)

ifneq ($(STABILITY_TAG),)
ifneq ($(TAG),latest)
    override TAG := $(TAG)-$(STABILITY_TAG)
endif
endif

.PHONY: build test push shell run start stop logs clean release

default: build

build:
	docker build -t $(REPO):$(TAG) \
		--build-arg FROM_TAG=$(FROM_TAG) \
		--build-arg SEARCH_API_SOLR_VER=$(SEARCH_API_SOLR_VER) ./

test:
	IMAGE=$(REPO):$(TAG) NAME=$(NAME) ./test.sh

push:
	docker push $(REPO):$(TAG)

shell:
	docker run --rm --name $(NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) /bin/bash

run:
	docker run --rm --name $(NAME) -e DEBUG=1 $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) $(CMD)

start:
	docker run -d --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG)

stop:
	docker stop $(NAME)

logs:
	docker logs $(NAME)

clean:
	-docker rm -f $(NAME)

release: build push
