#!/usr/bin/env bash

cd caddy && docker-compose up -d && cd ..
cd homer && docker-compose up -d && cd ..
cd firefly && docker-compose up -d && cd ..
cd paperless-ng && docker-compose up -d && cd ..
