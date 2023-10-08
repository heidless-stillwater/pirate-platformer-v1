docker build . -t pirate

#docker network create microNetwork

# docker run --rm --name finance-backend --network microNetwork -p 8000:8000 finance-backend

docker run --rm --name pirate -p 8000:8000 pirate

# access docker shell
docker exec -it pirate bash

# check exists
docker image ls

docker run -dt -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix pygame

