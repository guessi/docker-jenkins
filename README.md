# Dockerized Jenkins Service

[![Docker Stars](https://img.shields.io/docker/stars/guessi/docker-jenkins.svg)](https://hub.docker.com/r/guessi/docker-jenkins/)
[![Docker Pulls](https://img.shields.io/docker/pulls/guessi/docker-jenkins.svg)](https://hub.docker.com/r/guessi/docker-jenkins/)
[![Docker Automated](https://img.shields.io/docker/automated/guessi/docker-jenkins.svg)](https://hub.docker.com/r/guessi/docker-jenkins/)


## Integrated Items

* Jenkins LTS 2.277.2
* Jenkins Plugins: see plugins.txt


## Usage

To run a nagios service with default config, use the command below:

    $ docker run -d -p 8080:8080 --name jenkins guessi/docker-jenkins:2.277.2


## Dashboard

Find the initial password via:

    $ docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword

Login with initial password, and change password immediately:

    http://127.0.0.1:8080


# Configure

    whatever you want...
