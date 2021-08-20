FROM node:16

WORKDIR /usr/src/app

COPY package.json .
COPY package-lock.json .

RUN npm clean-install

COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]
