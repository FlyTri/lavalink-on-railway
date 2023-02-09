FROM openjdk:18-jdk
FROM node:16

RUN npm install
COPY * /app/
WORKDIR /app
CMD ["node", "index.js"]