## Build frontend
# get the base node image
FROM node:20.11.0 as builder

# set the working dir for container
WORKDIR /app

ADD ./frontend/ /app/frontend/
# copy the json file first
# COPY ./frontend/package.json /app/frontend/

WORKDIR /app/frontend/
# install npm dependencies
# RUN npm install -g watch-run
RUN yarn install

# copy other project files
COPY . .

# build the folder
CMD [ "yarn", "start"]
