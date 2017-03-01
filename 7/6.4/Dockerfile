FROM wodby/solr:6.4

ENV SEARCH_API_VER 7.x-1.12

RUN wget -qO- https://ftp.drupal.org/files/projects/search_api_solr-${SEARCH_API_VER}.tar.gz \
    | tar xz -C /opt/docker-solr/scripts/ && \
    mkdir -p /opt/docker-solr/configsets/drupal && \
    mv /opt/docker-solr/scripts/search_api_solr/solr-conf/6.x /opt/docker-solr/configsets/drupal/conf && \
    rm -rf /opt/docker-solr/scripts/search_api_solr

COPY rewrite.mk /opt/docker-solr/scripts/

USER 0
RUN touch /opt/docker-solr/scripts/rewrite.mk && chown solr:solr /opt/docker-solr/scripts/rewrite.mk
USER $SOLR_USER
