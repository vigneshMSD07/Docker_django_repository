#creating a volume
docker volume create sample_volume

#create a dockerfile
FROM centos:centos7

RUN yum install update && yum -y install python && yum -y install wget

WORKDIR /home/volume_test

COPY $(pwd)/vikky.py /home/volume_test/sample.py

ENTRYPOINT ["python", "sample.py"]


#link the volume to the docker
docker run -d -v <volumename>:<containerpath> <containerid>

#we can link the same volume tomultiple container
docker run -d -v <volumename>:<container2path> <container2id>
