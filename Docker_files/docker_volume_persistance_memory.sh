#one way to store the documents is that we can add all the necessary documents to the
#volume and we can use the same volume to mount on different containers, so that we canmaintain a centralized
#storage system

Method 1: using docker image and containers
Step 1:
#create a volume
docker volume create <volume_name>

Step 2:
#add  a document in to the volume
echo "test_volume" > /var/lib/docker/volumes/<volume_name>/_data/<file_name>

Step 3:
#check whether the document is added to the volume
ls -l /var/lib/docker/volumes/<volume_name>/_data

Step 4:
#link the volume to a image and run it
docker run -d -v <volume_name>:<container_path> <image_id>

Step 5:
#Check whether the document inside the linked container reflects inside
#the containers
docker exec -it <container_id> /bin/bash
#check in the <container_path> mentioned above for the document inside the
#linked volumes


Method 2: using docker-compose
Step 1:
#create a docker-compose file:
version: "3.1"

services:
  tomcat_1:
    image: tomcat:latest
    restart: always
    volumes:
      - vikky:/home

volumes:
  vikky:
    driver: local


Step 2:
#add the file in the above mentioned volume
echo "test_volume" > /var/lib/docker/volumes/<volume_name>/_data/<file_name>

Step 3:
#enter in to running container to check whether documents are reflecting
docker exec -it <container_id> /bin/bash

#If the container linked to a volume has been scalled, the all the scalled containers
#will be pointing t a common volume
ex:
docker-compose up --scale <service_name>=3 -d

#exec in to any one fo the scalled container, you can see the it is also pointed
#to same volume
