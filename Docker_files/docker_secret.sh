#docker secret are used for securely transfer information in to containers
# and also for providing access to the service inside the containers for other
# containers


step 1:
#how to create a secret:
create the CA for the machine on which service is running
create a secret with the certificate
cmd: docker secret create <secret_name> <cert path>

Step 2:
#put the secret inside the compose file
add the secret while running the image
cmd: docker service create --name <service_name> --secret <secret_name>  <image_name>
Note:
Now our machine has access to service running in the container.

Step 3:
we can do the same thing while running a ymlfile

eg:
version: '3.4'

services:
  test_check:
    image: nginx:latest
    configs:
      - source: test_config
        target: /run/config
    secrets:
      - source: test_secret
        target: vikky.secret
    volumes:
      - test_volume:/home
    deploy:
      mode: replicated
      replicas: 3
      labels:
        com.docker.descr: "test_vikky"
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          memory: 5mb




volumes:
  test_volume:
    driver: local

configs:
  test_config:
    file: ./test.crt

secrets:
  test_secret:
    file: ./test.crt



#similar to secret we can alos add the config file in to a running container,
#so that the weservices will be running based on the command we addded
#in the configs
