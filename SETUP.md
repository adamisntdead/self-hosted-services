# Setup

Everything runs through Docker, and is configured with docker-compose files.
To setup everything, you will need to do a few things before you start all of the dockers.

## Certificates

For the reverse proxy to work properly with the domain `ak2316.sh`, you need to generate some certificates.
These instructions are written for MacOS, but shouldn't be too hard to adapt to other settings.

```shell
# Create a local CA
brew install mkcert
mkcert -install

# Generate a trusted local certificate
cd ./caddy/certs
mkcert "*.ak2316.sh"
mkcert "ak2316.sh"
cd ../..
```

You will need to edit the `/etc/host` file, adding

```shell
127.0.0.1 ak2316.sh firefly.ak2316.sh paperless.ak2316.sh
```

this will need to be modified if more services are added.

## Application Setup

### Paperless

You will need to create a superuser.

```shell
# Create a superuser
cd paperless-ng
docker compose run --rm webserver createsuperuser
```

## Running

You can boot up all of the services with

```shell
./scripts/up.sh
```

and you can tear it down with

```shell
./scripts/down.sh
```
