FROM centos:centos7

RUN yum -y install epel-release && yum install -y install python-pip && pip install selenium

WORKDIR /home/selenium

ADD . /home/selenium

RUN yum -y install wget

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

RUN yum install -y install google-chrome-stable_current_x86_64.rpm

RUN wget https://chromedriver.storage.googleapis.com/84.0.4147.30/chromedriver_linux64.zip

ENTRYPOINT ["python", "sample.py"]  #this is to keep the container running
