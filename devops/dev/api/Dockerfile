FROM node:alpine

WORKDIR /home/node

COPY ./api/package.json .

RUN npm i

RUN npm i -g pm2

CMD pm2 start server.js --watch --no-daemon --restart-delay=3000 --max-restarts=5