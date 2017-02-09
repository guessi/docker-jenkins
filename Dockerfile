FROM jenkins:2.32.2
ADD plugins.txt /
RUN cat /plugins.txt | xargs /usr/local/bin/install-plugins.sh
