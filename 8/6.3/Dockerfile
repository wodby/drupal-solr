FROM wodby/solr:6.3

ENV SEARCH_API_VER 8.x-1.0-beta1

RUN wget -qO- https://ftp.drupal.org/files/projects/search_api_solr-${SEARCH_API_VER}.tar.gz \
    | tar xz -C /opt/docker-solr/scripts/ && \
    mkdir -p /opt/docker-solr/configsets/drupal && \
    mv /opt/docker-solr/scripts/search_api_solr/solr-conf/6.x /opt/docker-solr/configsets/drupal/conf && \
    rm -rf /opt/docker-solr/scripts/search_api_solr && \
    sed -i 's/data_driven_schema_configs/drupal/' /opt/docker-solr/scripts/Makefile