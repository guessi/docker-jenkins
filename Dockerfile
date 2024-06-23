FROM jenkins/jenkins:2.452.2
ADD plugins.txt /
RUN cat /plugins.txt | xargs jenkins-plugin-cli --plugins
