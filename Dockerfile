FROM jenkins/jenkins:2.235.2
ADD plugins.txt /
RUN cat /plugins.txt | xargs /usr/local/bin/install-plugins.sh
