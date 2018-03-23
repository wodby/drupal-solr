# Apache Solr for Drupal Docker Container Image 

[![Build Status](https://travis-ci.org/wodby/drupal-solr.svg?branch=master)](https://travis-ci.org/wodby/drupal-solr)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal-solr.svg)](https://hub.docker.com/r/wodby/drupal-solr)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal-solr.svg)](https://hub.docker.com/r/wodby/drupal-solr)
[![Docker Layers](https://images.microbadger.com/badges/image/wodby/drupal-solr.svg)](https://microbadger.com/images/wodby/drupal-solr)

## Overview

!!! For better reliability we release images with stability tags (`wodby/drupal-solr:8-7.2-X.X.X`) which correspond to [git tags](https://github.com/wodby/drupal-solr/releases). We **STRONGLY RECOMMEND** using images only with stability tags. 

This image is based on [wodby/solr](https://github.com/wodby/solr) and comes with the default config set for Drupal from [Search API Solr Search](https://www.drupal.org/project/search_api_solr) module.

## Docker Images

* All images are based on Alpine Linux
* Base image: [solr](https://github.com/wodby/solr)
* [Travis CI builds](https://travis-ci.org/wodby/drupal-solr) 
* [Docker Hub](https://hub.docker.com/r/wodby/drupal-solr)

[_(Dockerfile)_]: https://github.com/wodby/drupal-solr/tree/master/Dockerfile

| Supported tags and respective `Dockerfile` links | Solr | Search API Solr |
| ------------------------------------------------ | ---- | --------------- |
| `8-7.2`, `latest` [_(Dockerfile)_]               | 7.2  | 8.x-2.0-alpha3  |
| `8-7.1` [_(Dockerfile)_]                         | 7.1  | 8.x-2.0-alpha3  |
| `8-7.0` [_(Dockerfile)_]                         | 7.0  | 8.x-2.0-alpha3  |
| `8-6.6` [_(Dockerfile)_]                         | 6.6  | 8.x-1.2         |
| `8-6.5` [_(Dockerfile)_]                         | 6.5  | 8.x-1.2         |
| `8-6.4` [_(Dockerfile)_]                         | 6.4  | 8.x-1.2         |
| `8-6.3` [_(Dockerfile)_]                         | 6.3  | 8.x-1.2         |
| `8-5.5` [_(Dockerfile)_]                         | 5.5  | 8.x-1.2         |
| `7-5.4` [_(Dockerfile)_]                         | 5.4  | 7.x-1.12        |

## Environment Variables

See [wodby/solr](https://github.com/wodby/solr)

## Orchestration Actions

See [wodby/solr](https://github.com/wodby/solr) 

## Complete Drupal Stack

See [wodby/docker4drupal](https://github.com/wodby/docker4drupal)

## Deployment

Deploy Solr for Drupal to your server via [![Wodby](https://www.google.com/s2/favicons?domain=wodby.com) Wodby](https://cloud.wodby.com/stackhub/07a28bf6-6772-4ac2-9d3e-6b097e9038ff).
