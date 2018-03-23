ARG BASE_IMAGE_TAG

FROM wodby/solr:${BASE_IMAGE_TAG}

ARG SEARCH_API_SOLR_VER

ENV SEARCH_API_SOLR_VER="${SEARCH_API_SOLR_VER}"

USER root

RUN set -ex; \
    \
    # Downloading config set from search_api_solr drupal module
    url="https://ftp.drupal.org/files/projects/search_api_solr-${SEARCH_API_SOLR_VER}.tar.gz"; \
    wget -qO- "${url}" | tar xz -C /opt/docker-solr/scripts/; \
    mkdir -p /opt/docker-solr/configsets/drupal; \
    mv "/opt/docker-solr/scripts/search_api_solr/solr-conf/${SOLR_VER:0:1}.x" /opt/docker-solr/configsets/drupal/conf; \
    rm -rf /opt/docker-solr/scripts/search_api_solr; \
    chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr/configsets/drupal/; \
    \
    # Change default config set to drupal
    sed -i -e 's/data_driven_schema_configs/drupal/g' /usr/local/bin/actions.mk; \
    sed -i -e 's/_default/drupal/g' /usr/local/bin/actions.mk

USER $SOLR_USER