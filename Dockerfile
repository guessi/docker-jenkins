FROM jenkins/jenkins:2.426.2
ADD plugins.txt /
RUN cat /plugins.txt | xargs jenkins-plugin-cli --plugins
