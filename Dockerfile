FROM jenkins/jenkins:2.401.1
ADD plugins.txt /
RUN cat /plugins.txt | xargs jenkins-plugin-cli --plugins
