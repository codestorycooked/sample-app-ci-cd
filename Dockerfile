FROM node:10-alpine3.11

WORKDIR /app

COPY index.js ./

COPY package.json ./

COPY package-lock.json ./

RUN npm install --production

CMD node index.js