FROM jenkins/jenkins:2.361.1
ADD plugins.txt /
RUN cat /plugins.txt | xargs jenkins-plugin-cli --plugins
