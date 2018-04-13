# Dockerized Jenkins Service

[![Docker Stars](https://img.shields.io/docker/stars/guessi/docker-jenkins.svg)](https://hub.docker.com/r/guessi/docker-jenkins/)
[![Docker Pulls](https://img.shields.io/docker/pulls/guessi/docker-jenkins.svg)](https://hub.docker.com/r/guessi/docker-jenkins/)
[![Docker Automated](https://img.shields.io/docker/automated/guessi/docker-jenkins.svg)](https://hub.docker.com/r/guessi/docker-jenkins/)


## Integrated Items

* Jenkins LTS 2.107.2
* Jenkins Plugins: see plugins.txt


## Usage

To run a nagios service with default config, use the command below:

    $ docker run -d -p 8080:8080 guessi/docker-jenkins:2.107.2

If you attach slaves via JNLP (Java Web Start), please use the command below:

    $ docker run -d -p 8080:8080 -p 50000:50000 guessi/docker-jenkins:2.107.2


## Dashboard

    Login: http://127.0.0.1:8080


# Configure

    whatever you want...
