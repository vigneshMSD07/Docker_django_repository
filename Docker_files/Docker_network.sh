#basic docker netwrork drivers:
#bridge - default network driver which containers will be connected
#user_defined bridge: by using -- link command by linking 2 containers so that they can communicate
#with each other in a isolated netowkr bridge

version : '3.1'

services:
  mysql:
    image: mysql:latest
    environment:
      MYSQL_ROOT_PASSWORD: hellovikky
    networks:
      - test_net
  phpmyadmin:
    image: phpmyadmin/phpmyadmin:latest
    ports:
      - "1004:8080"
      - "1005:8080"
    environment:
      PYTHONVAR: welcome
    networks:
      - test_net1

networks:
  test_net:
    driver: bridge
  test_net1:
    driver: bridge
