FROM node:16.10.0-alpine3.14

EXPOSE 8080

WORKDIR /app

COPY /src/package*.json .

RUN npm install

COPY /src .

CMD ["npm", "start"]