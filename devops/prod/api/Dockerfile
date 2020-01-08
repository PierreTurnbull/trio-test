FROM node:alpine

WORKDIR /home/node

COPY package.json .

RUN npm i

RUN npm i -g pm2

COPY server.js .

CMD pm2 start server.js --no-daemon --restart-delay=3000 --max-restarts=5