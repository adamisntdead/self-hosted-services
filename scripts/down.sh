#!/usr/bin/env bash

cd caddy && docker compose down && cd ..
cd homer && docker compose down && cd ..
cd firefly && docker compose down && cd ..
cd paperless-ng && docker compose down && cd ..