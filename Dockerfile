FROM node:4-onbuild
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
EXPOSE 8080
CMD [ "npm", "start" ]

#docker build -t paulorcf/apigw-octo-nodejs .
# docker run -p 49160:8080 -d paulorcf/apigw-octo-nodejs

# https://nodejs.org/en/docs/guides/nodejs-docker-webapp/
# https://hub.docker.com/_/node/
#$ docker build -t my-nodejs-app .
#$ docker run -it --rm --name my-running-app my-nodejs-app
