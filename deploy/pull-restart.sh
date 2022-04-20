#!/bin/sh

# pull docker image
#docker pull wsukduncan/site2:latest
# kill old running container (to clear host port)
#docker kill *
docker stop cheese
# docker system prune is not pruning latest
docker system prune -f -a

#docker image rm wsukduncan/site2:latest

#pull image post prune
docker pull wsukduncan/site2:latest
# run new image
docker run -d --name cheese -p 80:80 wsukduncan/site2:latest 
