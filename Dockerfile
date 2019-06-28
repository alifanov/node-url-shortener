FROM node:10

WORKDIR /usr/src/app

COPY package.json ./

RUN npm i --only=production

COPY . .

EXPOSE 8080
CMD [ "npm", "start"]
