# Apache Solr for Drupal Docker Container Image 

[![Build Status](https://travis-ci.org/wodby/drupal-solr.svg?branch=master)](https://travis-ci.org/wodby/drupal-solr)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal-solr.svg)](https://hub.docker.com/r/wodby/drupal-solr)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal-solr.svg)](https://hub.docker.com/r/wodby/drupal-solr)
[![Docker Layers](https://images.microbadger.com/badges/image/wodby/drupal-solr.svg)](https://microbadger.com/images/wodby/drupal-solr)

## Overview

❗️For better reliability we release images with stability tags (`wodby/drupal-solr:8-7-X.X.X`) which correspond to [git tags](https://github.com/wodby/drupal-solr/releases). We strongly recommend using images only with stability tags. 

This image is based on [wodby/solr](https://github.com/wodby/solr) and comes with the default config set for Drupal from [Search API Solr Search](https://www.drupal.org/project/search_api_solr) module.

## Docker Images

* All images are based on Alpine Linux
* Base image: [solr](https://github.com/wodby/solr)
* [Travis CI builds](https://travis-ci.org/wodby/drupal-solr) 
* [Docker Hub](https://hub.docker.com/r/wodby/drupal-solr)

[_(Dockerfile)_]: https://github.com/wodby/drupal-solr/tree/master/Dockerfile
[Search API Solr]: https://www.drupal.org/project/search_api_solr

| Supported tags and respective `Dockerfile` links | Drupal | Solr | [Search API Solr] |
| ------------------------------------------------ | ------ | ---- | ----------------- |
| `8-7.4`, `8-7`, `8`, `latest` [_(Dockerfile)_]   | 8      | 7.4  | 8.x-2.0           |
| `8-7.3` [_(Dockerfile)_]                         | 8      | 7.3  | 8.x-2.0           |
| `8-7.2` [_(Dockerfile)_]                         | 8      | 7.2  | 8.x-2.0           |
| `8-7.1` [_(Dockerfile)_]                         | 8      | 7.1  | 8.x-2.0           |
| `8-6.6`, `8-6` [_(Dockerfile)_]                  | 8      | 6.6  | 8.x-2.0           |
| `8-5.5`, `8-5` [_(Dockerfile)_]                  | 8      | 5.5  | 8.x-1.2           |
| `7-5.4`, `7-5`, `7` [_(Dockerfile)_]             | 8      | 5.4  | 7.x-1.12          |

## Environment Variables

See [wodby/solr](https://github.com/wodby/solr)

## Orchestration Actions

See [wodby/solr](https://github.com/wodby/solr) 

## Complete Drupal Stack

See [wodby/docker4drupal](https://github.com/wodby/docker4drupal)

## Deployment

Deploy Solr for Drupal to your server via [![Wodby](https://www.google.com/s2/favicons?domain=wodby.com) Wodby](https://cloud.wodby.com/stackhub/07a28bf6-6772-4ac2-9d3e-6b097e9038ff).
