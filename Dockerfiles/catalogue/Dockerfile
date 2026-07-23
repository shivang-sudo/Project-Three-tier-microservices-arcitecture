FROM node:8

ENV INSTANA_AUTO_PROFILE true

EXPOSE 8080

WORKDIR /opt/server/

COPY package.json /opt/server/

RUN npm install

COPY . .

CMD ["node", "server.js"]














