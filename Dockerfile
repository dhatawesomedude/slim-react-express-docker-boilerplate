FROM node:11-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY server/ .

RUN npm install -g yarn

RUN yarn install

EXPOSE 8080

CMD ["yarn", "start"]
