FROM node:12

USER root

RUN npm install -g @remix-project/remixd

RUN sed -i s/127.0.0.1/0.0.0.0/g /usr/local/lib/node_modules/@remix-project/remixd/websocket.js

RUN mkdir /app

EXPOSE 65520

ENTRYPOINT ["/usr/local/bin/remixd", "-s", "/app"]
