FROM jenkins/jenkins:2.414.1
ADD plugins.txt /
RUN cat /plugins.txt | xargs jenkins-plugin-cli --plugins
