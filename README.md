# Apache Solr for Drupal Docker Container Image 

[![Build Status](https://travis-ci.org/wodby/drupal-solr.svg?branch=master)](https://travis-ci.org/wodby/drupal-solr)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal-solr.svg)](https://hub.docker.com/r/wodby/drupal-solr)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal-solr.svg)](https://hub.docker.com/r/wodby/drupal-solr)
[![Wodby Slack](http://slack.wodby.com/badge.svg)](http://slack.wodby.com)

## Overview

This image is based on [wodby/solr](https://github.com/wodby/solr) and comes with the default config set for Drupal from [Search API Solr Search](https://www.drupal.org/project/search_api_solr) module.

## Docker Images

* All images are based on Alpine Linux
* Base image: [solr](https://github.com/wodby/solr)
* [Travis CI builds](https://travis-ci.org/wodby/drupal-solr) 
* [Docker Hub](https://hub.docker.com/r/wodby/drupal-solr)

For better reliability we release images with stability tags (`wodby/drupal-solr:8-6.6-X.X.X`) which correspond to git tags. We **strongly recommend** using images only with stability tags. Below listed basic tags:

| Image tag         | Solr | Search API Solr |
| ----------------- | ---- | --------------- |
| `8-7.1`, `latest` | 7.1  | 8.x-2.0-alpha2  |
| `8-7.0`           | 7.0  | 8.x-2.0-alpha2  |
| `8-6.6`           | 6.6  | 8.x-1.2         |
| `8-6.5`           | 6.5  | 8.x-1.2         |
| `8-6.4`           | 6.4  | 8.x-1.2         |
| `8-6.3`           | 6.3  | 8.x-1.2         |
| `8-5.5`           | 5.5  | 8.x-1.2         |
| `7-5.4`           | 5.4  | 7.x-1.12        |

## Environment Variables

See [wodby/solr](https://github.com/wodby/solr)

## Orchestration Actions

See [wodby/solr](https://github.com/wodby/solr) 

## Complete Drupal Stack

See [wodby/docker4drupal](https://github.com/wodby/docker4drupal)

## Deployment

Deploy Solr for Drupal to your server via [![Wodby](https://www.google.com/s2/favicons?domain=wodby.com) Wodby](https://cloud.wodby.com/stackhub/07a28bf6-6772-4ac2-9d3e-6b097e9038ff).
