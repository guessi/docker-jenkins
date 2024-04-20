FROM jenkins/jenkins:2.440.3
ADD plugins.txt /
RUN cat /plugins.txt | xargs jenkins-plugin-cli --plugins
