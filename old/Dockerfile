FROM jenkins/jenkins:lts-jdk11

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt


RUN apt update && \
    apt install -y --no-install-recommends gnupg curl ca-certificates apt-transport-https && \
    curl -sSfL https://apt.octopus.com/public.key | apt-key add - && \
    sh -c "echo deb https://apt.octopus.com/ stable main > /etc/apt/sources.list.d/octopus.com.list" && \
    apt update && apt install -y octopuscli
USER jenkins


RUN jenkins-plugin-cli --plugins octopusdeploy:3.1.6
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt