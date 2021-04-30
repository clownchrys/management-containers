FROM jenkins/jenkins:lts

USER root

RUN apt update
RUN apt install -y \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu cosmic stable"
RUN apt update
RUN apt install -y docker-ce docker-ce-cli containerd.io

ENTRYPOINT [ "/sbin/tini", "--", "/usr/local/bin/jenkins.sh" ]