FROM centos:centos7

ENV VAGRANT_VERSION=2.2.14

RUN yum install -y wget unzip &&\
    wget https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}_linux_amd64.zip && \
    unzip vagrant_${VAGRANT_VERSION}_linux_amd64.zip && \
    mv vagrant /bin/vagrant && \
    rm vagrant_${VAGRANT_VERSION}_linux_amd64.zip

ENTRYPOINT ["vagrant"]

