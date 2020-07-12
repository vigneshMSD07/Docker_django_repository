#docker compose is used to run multiple container services on a single go and alos container can be linked together

version : '3.1'

services:
  mysql:
    image: mysql:latest
    environment:
      MYSQL_ROOT_PASSWORD: hellovikky
  phpmyadmin:
    image: phpmyadmin/phpmyadmin:latest
    ports:
      - "1004:8080"
      - "1005:8080"
    environment:
      PYTHONVAR: welcome
