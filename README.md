# Docker cron

Simple project to run sh, python or ruby scripts with crontab on docker.

## Pre-requisites

1. docker
2. docker-compose


## Running

`docker-compose up` will put the container up and running.

## Access the container and see the log file.

```sh
docker-exec -it docker_cron_scripts_1 sh

cat /var/log/script.log
```