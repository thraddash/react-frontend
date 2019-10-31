#  docker build -t react-frontend .
From node:8.7-slim

MAINTAINER theartist@gmail.com

# Mount react-frontend to docker image
WORKDIR /react-frontend
COPY . .

RUN npm install

CMD npm start

EXPOSE 5000
