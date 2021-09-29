# Setup

This setup requires a few things to keep everything working. These are described here.

## The Reverse Proxy

```shell
# Create a local CA
brew install mkcert
mkcert -install

# Generate a trusted local certificate
mkdir certs
cd ./certs
mkcert "*.ak2316.sh"
mkcert "ak2316.sh"
cd ..
```

You will need to edit the `/etc/host` file, adding

```shell
127.0.0.1 ak2316.sh firefly.ak2316.sh paperless.ak2316.sh
```

more entries will be required depending on how many services you are going to use.

## Caddy

```shell
# Install Caddy
brew install caddy

# Start Caddy
# brew services start caddy
caddy run --config Caddyfile
```

## Docker Compose Files

```shell
cd homer && docker compose up -d && cd ..
cd firefly && docker compose up -d && cd ..
cd paperless-ng && docker compose up -d && cd ..
```

## Paperless

```shell
# Create a superuser
cd paperless-ng
docker compose run --rm webserver createsuperuser
```
