FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production

# COPY . .

EXPOSE 8888
EXPOSE 8080

RUN npm start

