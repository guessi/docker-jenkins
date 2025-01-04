FROM jenkins/jenkins:2.479.2
ADD plugins.txt /
RUN cat /plugins.txt | xargs jenkins-plugin-cli --plugins
