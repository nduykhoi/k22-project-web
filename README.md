DOCUMENT DOCKER FOR PROJECT

* Prepare for the environment:
    - Install Docker

* Steps to create Docker Images:
  - Run command create and start docker: docker compose -f dev.yml up --build
  - Run command only start docker: docker compose -f dev.yml up
  - Run command Stop docker: docker-compose -f dev.yml down
  - Run command show docker container and get ID docker: docker ps
  - Go to local file docker container: docker exec -t -i <ID_Docker_container> /bin/bash

* Command for frontend (after run command "Go to local file docker container"):
  - Go to local file docker container: docker exec -t -i <ID_Docker_container_backend> /bin/bash
  - npm ...

* CLEAN DATA DOCKER:
    - volumes not used: docker volume rm $(docker volume ls -qf dangling=true)
    - system: docker system prune -a

* Clean & View data docker:
    - Clean volume data not use: docker volume rm $(docker volume ls -q)
    - Clean all data not use: docker system prune -y
    - Clean trash Ubuntu: rm -rf ~/.local/share/Trash/*
    - View all data docker: docker system df

* Management service app:
  - Frontend: localhost:3000 or {CLIENT_PORT}