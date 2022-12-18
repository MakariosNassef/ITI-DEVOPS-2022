#Stage 1
FROM node:10 AS builder
# set working directory
WORKDIR /node/tic-app
COPY package*.json ./
COPY . ./
RUN npm install 
#Stage 2
#pull the official nginx:1.19.0 base image
FROM alpine:3.14
WORKDIR /app
# Copies static resources from builder stage
COPY --from=builder /node/tic-app /app
CMD [ "npm", "run", "start-dev" ]
