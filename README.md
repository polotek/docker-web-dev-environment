# Docker web dev envrionment

This is a proof of concept for easily setting up dockerized dev environments
for common web application architectures. The goal is to be able to fork/clone this repo and then use it to start your new django project.

## Installation

### Prerequisites
* python3
* Docker

Docker must be running. The scripts assume the `docker` and `docker-compose` commands are available in your PATH.

### Setup:

Getting setup requires you to do an initial build of the docker image. Clone this repo and then setup your django project within it as you normally would. Once you've done that, I've tried to include a few simple scripts to get going.

```
> bin/build
> bin/db_migrate
> docker-compose up
```

## Updating this repo

To update dependencies:

1. Update `requirements.txt`
2. Run `bin/update_deps`
3. Update `Dockerfile`
4. Run `bin/build`
