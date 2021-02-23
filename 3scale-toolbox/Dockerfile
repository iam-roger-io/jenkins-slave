FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:v3.11 as builder

LABEL name="openshift/origin-jenkins-agent-ansible-ubi7" \
      version="1.0" \
      architecture="x86_64" \
      release="1" \
      io.k8s.display-name="Jenkins Agent 3Scale Toolbox" \      
      io.openshift.tags="openshift,jenkins,agent,3scale"


USER root
RUN mkdir /opt/test
WORKDIR /opt/test

ADD 3scale-toolbox-0.17.1-1.el7.x86_64.rpm  .
RUN rpm -i 3scale-toolbox-0.17.1-1.el7.x86_64.rpm 

ADD test.sh  /opt/test/

USER 1001
