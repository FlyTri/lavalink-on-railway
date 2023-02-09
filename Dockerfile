FROM node:16

WORKDIR /src/
COPY ./* /src/
RUN npm install
CMD ["node", "index.js"]