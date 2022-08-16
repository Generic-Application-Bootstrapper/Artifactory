FROM jenkins/ssh-agent:jdk11
# RUN apk add vim curl less git


ENV JENKINS_HOME /home/jenkins
ENV PYENV_ROOT=${JENKINS_HOME}/.pyenv
ENV PATH=${PATH}:${PYENV_ROOT}/bin:${PYENV_ROOT}/shims
ENV PATH_DUPLICATE=${PATH}

USER root

ARG python_build_dependencies="make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev"

RUN apt-get -y update && \
    apt-get -y install \
    ${python_build_dependencies}

RUN apt-get -y install git curl less
RUN curl -sSL https://get.docker.com/