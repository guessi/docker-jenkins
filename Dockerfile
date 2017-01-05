FROM jenkins:2.32.1
ADD plugins.txt /
RUN cat /plugins.txt | xargs /usr/local/bin/install-plugins.sh
