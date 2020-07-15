Docker compose scaling is to avaoid overloading incase a single rest api
service container being used by multiple applications


Step 1:
create a basic docker compose file with a sigle container as mentioned below:
docker-compose.yml:
version: "3.1"(compose file version always good to go with latest one)
services:
  tomcat1:
    image: tomcat:latest
    restrat: always(incase the container wnt down, will get restarted automatically)


Step 2:
run the docker compose file:
docker-compose up -d(make sure you are running in the directory where file is being placed.)

Step 3:
Run th below scalling command:
docker-compose scale tomcat1(servicename)=3(this will scale the container to 3 times)

Step 4:
docker ps(we can see 3 instance of sevice tomcat1)
