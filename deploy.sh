#!/bin/bash
work_path=$(dirname $(readlink -f $0))
docker pull certbot/certbot
docker run -it --rm --name certbot -v $work_path/letsencrypt/etc-letsencrypt:/etc/letsencrypt -v  $work_path/letsencrypt/var-lib-letsencrypt:/var/lib/letsencrypt certbot/certbot certonly
docker stack deploy --compose-file ./xtls.yml xtls