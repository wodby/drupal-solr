FROM wodby/solr:6.5

ENV SEARCH_API_VER 8.x-1.0

RUN wget -qO- https://ftp.drupal.org/files/projects/search_api_solr-${SEARCH_API_VER}.tar.gz \
    | tar xz -C /opt/docker-solr/scripts/ && \
    mkdir -p /opt/docker-solr/configsets/drupal && \
    mv /opt/docker-solr/scripts/search_api_solr/solr-conf/6.x /opt/docker-solr/configsets/drupal/conf && \
    rm -rf /opt/docker-solr/scripts/search_api_solr && \
    sed 's/data_driven_schema_configs/drupal/g' /usr/local/bin/actions.mk > temp.mk && cat temp.mk > /usr/local/bin/actions.mk && rm temp.mk
