FROM jenkinsci/blueocean
USER root
RUN apk add nodejs npm curl less vim bash

# Install Plugins
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN apk add gnupg curl ca-certificates 
USER jenkins
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt