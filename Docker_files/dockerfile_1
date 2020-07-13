FROM centos:centos7

RUN yum update

RUN yum -y install python

env PYTHONPATH=/home/test

RUN export PYTHONPATH

WORKDIR /home/check/

CMD echo "docker basic image done"
