FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:v3.11 as builder

LABEL name="jenkins-3scale-toolbox" \
      version="1.0" \
      architecture="x86_64" \
      release="1" \
      io.k8s.display-name="Jenkins Agent 3Scale Toolbox" \      
      io.openshift.tags="openshift,jenkins,agent,3scale"


USER root

RUN mkdir /opt/cert
RUN mkdir /opt/tools

WORKDIR /opt/test

ADD 3scale-toolbox-0.17.1-1.el7.x86_64.rpm  .
RUN rpm -i 3scale-toolbox-0.17.1-1.el7.x86_64.rpm 

ADD self-signed-cert.pem /opt/cert
ADD yq /opt/tools
ADD xmltag-set /opt/tools

USER 1001
