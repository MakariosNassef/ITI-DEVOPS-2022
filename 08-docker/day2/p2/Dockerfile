FROM node:10-alpine

#cd to tic-app
WORKDIR /node/tic-app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000
CMD [ "npm", "run", "start-dev" ]
