# Setup

This setup requires a few things to keep everything working. These are described here.

## The Reverse Proxy

```shell
# Create a local CA
brew install mkcert
mkcert -install

# Generate a trusted local certificate
cd ./certs
mkcert "*.ak2316.sh"
mkcert "ak2316.sh"
```

You will need to edit the `/etc/host` file, adding

```shell
127.0.0.1 ak2316.sh firefly.ak2316.sh
```

more entries will be required depending on how many services you are going to use.

## Caddy

```shell
# Install caddy
brew install caddy
brew services start caddy
```
