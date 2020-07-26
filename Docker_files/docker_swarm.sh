#Basically docker swarm or cluster has 2 basic nodes(manager and worker)

#basic command to create a swarm(cluster)
docker swarm init(if the current has a single ip)

#incase of multiple address need to specify the particular ip
docker swarm --advertise-addr <ip_address>

#the abve command will add the node in which the swarm has been creatd as manager node

#we can check the node status, by performing below command:
docker node ls

#command to get new VM instance
docker-machine create <machine_name>

#command to check the dockermachine available
docker-machine ls

#how to add a newly created VM as worker to the manager nodes
#ssh in to the newly created VM
docker-machine ssh <machine_name>

#we need to join token so that the VM can be added as a worker to the manager node:
docker swarm join-token worker

# we can copy paste the above generated in to the ne Vm and execute it, this will
#add that machine as a worker node to our swarm

#once the above node has been added, we can login in to the manager node and perform below commands
docker node ls

#command to leave a node from swarm
#the below command should be run inside the worker node , so that it will be left from the
#swarm
docker swarm leave

#command to remove a node from manager nodes
docker node rm <node_name>

#command to promote a node from worker to manager:
#the below command can be done only frommanager nodes
docker node promote <node_name>

#the below node is to demote a node from manager to worker
docker node demote <node_name>
