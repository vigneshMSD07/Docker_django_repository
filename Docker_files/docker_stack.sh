#docker stack is similar to docker compose, where stack is used to maintain
#container inside docker swarm
#This use similaye ymlfile like compose but it has few more commands related
#to docker services

#docker_stack file:
version: '3.4'

services:
  test_check:
    image: nginx:latest
    volumes:
      - test_volume:/home
    deploy:
      mode: replicated
      replicas: 3
      labels:
        com.docker.descr: "test_vikky"
      placement:
        constraints:
          - node.role == worker
      resources:
        limits:
          memory: 5mb

volumes:
  test_volume:
    driver: local



#basic docker stack commands:
Step 1:
#command to run the yml file:
docker stack deploy -c <file_name> <stack_name>

Step 2:
#to check the sunning services
docker services ls(we should be able to see a service runnig with above
#mentioned stack_name)
