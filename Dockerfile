FROM node:9.8.0-stretch
COPY server/config/config.example.js server/config/config.js
COPY client/config/config.example.js client/config/config.js
RUN npm install
CMD ['npm','start']
