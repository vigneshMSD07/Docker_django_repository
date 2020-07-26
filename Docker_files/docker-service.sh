#docker services are similar to docker compose, but this can be used incase of
#docker swarm

#command to create a services
docker service create <image_name>
eg: docker service create nginx:latest

#command to add port to the services
docker service --publish-add <port> <service id>

#command to add replicawhich is similar to scalling in compose
docker service --replicas 4 <service id> (this will replicate 4 times the service)

#command to list all services:
docker service ls

#command to see all the containers running inside a particular services
docker service ps <service id>

#command to remove a services
docker service rm <service_id>
