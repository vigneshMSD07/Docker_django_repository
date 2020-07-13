Linking 2 containers: 
container 1: test_sql
container2: adminer(b1c6e1579623)
Cmd: docker run -it --link "test_sql:sql" -p 8080:8080 b1c6e1579623

Interraction with image:
docker run -it <imageid> /bin/bash or /bin/sh(based on the images)

Interaction with running container:
docker exec -it <container id> /bin/bash or /bin/sh(based on the images)

Adding volume to a container:
docker run -v <host path>:<container path> <container path>

creating a common volume and linking it with multiple container
docker volume create <volumename>
docker run -v <volumename>:<containerpath> <containerid>

#logs
docker logs <conatinerid>
#for continious monitoring of logs
docker -f logs <containerid>
