[hub]: https://hub.docker.com/r/frosty5689/cast-web-api-cli/

# frosty5689/cast-web-api-cli
[![](https://images.microbadger.com/badges/version/frosty5689/cast-web-api-cli.svg)](https://microbadger.com/images/frosty5689/cast-web-api-cli "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/frosty5689/cast-web-api-cli.svg)](https://microbadger.com/images/frosty5689/cast-web-api-cli "Get your own image badge on microbadger.com")[![Docker Pulls](https://img.shields.io/docker/pulls/frosty5689/cast-web-api-cli.svg)][hub][![Docker Stars](https://img.shields.io/docker/stars/frosty5689/cast-web-api-cli.svg)][hub]

## Usage

```
docker run \
  --name cast-web-api-cli \
  --net=host \
  -e TZ=YOUR_TIMEZONE \
  -e HOSTNAME=YOUR_HOST \
  -e PORT=YOUR_PORT \
  -p YOUR_PORT:YOUR_PORT/tcp \
  frosty5689/cast-web-api-cli
```

## Parameters
* `--net=host` - Uses host network with container, this is required for cast-web-api-cli to discover Chromecast Devices
* `-e TZ` - Timezone to run the app in
* `-e HOSTNAME` - Set the app to listener on a specific hostname (defaults to 127.0.0.1)
* `-p YOUR_PORT:YOUR_PORT/tcp` - Expose port YOUR_PORT used by the app as port YOUR_PORT to handle requests from SmartThings
