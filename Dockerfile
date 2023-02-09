FROM node:16

WORKDIR /src/
COPY ./* /src/
RUN apt-get update && apt-get install -y openjdk-18-jre-headless
RUN npm install
EXPOSE 8080
CMD ["node", "index.js"]
CMD ["java", "-jar", "Lavalink.jar", "-Xms=512MB", "-Xmx=512MB"]