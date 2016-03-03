FROM node:5

RUN mkdir /application
WORKDIR /application

ADD package.json /application/package.json
RUN npm install

ADD . /application
CMD "npm start --production"
