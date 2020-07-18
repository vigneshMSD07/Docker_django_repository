#pull

1. docker-compose pull (which will scan the docker compose file and will pull all the
images added)

2. docker-compose pull <service_name> (which will pull only the mentioned service)

#restart
1. docker-compose restart(will restart all the services mentioned in the
compose file)

2. docker-compose restart <service_name> (which will restart the specific service )

#pause
1. docker-compose pause(will pause all the services mentioned in the
compose file)

2. docker-compose pause <service_name> (which will pause the specific service )

#unpause
1. docker-compose unpause(will unpause all the services mentioned in the
compose file)

2. docker-compose unpause <service_name> (which will unpause the specific service )

#down

docker compose down(which will stop and remove all the services in compose file
and the associated networks)

#up

docker compose up(which will start all the services in the compose file)

#logs

docker-compose logs (will give logs of services in the compose file)

docker-compose -f logs <service_name>(will give and follow up the logs of specific
services)

#stop
docker-compose stop(will stop all the container in compose file)

docker-compose stop <service_name> (will stop particular service)
