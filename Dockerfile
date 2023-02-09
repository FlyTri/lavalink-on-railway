FROM node:16

WORKDIR $HOME/src/
ADD ./* $HOME/src/
RUN npm install
CMD ["node", "index.js"]