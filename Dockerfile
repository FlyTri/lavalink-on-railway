FROM node:16

WORKDIR /src/
COPY ./* /src/
RUN apt-get update && apt-get install -y default-jre
RUN npm install
CMD ["node", "index.js"]
CMD ["java", "-jar", "Lavalink.jar"]