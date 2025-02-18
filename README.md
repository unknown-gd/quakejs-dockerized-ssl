# Q3JS - Fully dockerized
Fully dockerized version of the [QuakeJS](https://github.com/unknown-gd/quakejs) project.

## Used Ports
* `27961-27964` - QuakeJS dedicated server's
* `27950` - QuakeJS master server
* `9000` - QuakeJS content server
* `443` - QuakeJS web client

## Pre-requisites
### Docker Engine & Compose Plugin
```bash
apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
### Libarchive-zip-perl and zipmerge ( Optional )
Required for `cctools`, used to merge .pk3 files.
```bash
apt-get install -y libarchive-zip-perl zipmerge
```

## How to start?
1. Set your domain name into `.env` as `Q3JS_DOMAIN`
2. Change paths to your certificate and key in `certificates/config.json`
3. Run `docker compose build && docker compose up -d`

## How to stop?
Lol, just run `docker compose down`

## How to configure?
* `.env` - General configuration
* `config/certificates` - SSL configuration
* `config/dedicated-server` - Dedicated server configuration ( `baseq3` and `cpma` gamemodes )
* `index.ejs` - Web client configuration

#### Also check out:
* [Quake 3 - Console variables](http://www.joz3d.net/html/q3console.html)
* [Official Wiki](https://steamforge.net/wiki/index.php/How_to_setup_a_local_QuakeJS_server_under_Debian_9_or_Debian_10)

## How I can make clients connect to my server automatically?
Just uncomment the line `args.push.apply( args, [ "+connect", "q3js.changeme.com:27961" ] )` in `index.ejs`

## How to use `cctools`? ( Repack and merge .pk3 files )
[README.md](./cctools/README.md) [ `LF` ONLY ]

