FROM jenkins/jenkins:2.414.3
ADD plugins.txt /
RUN cat /plugins.txt | xargs jenkins-plugin-cli --plugins
