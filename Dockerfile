FROM node:11.1

RUN npm install -g nodemon

# Create app directory
RUN mkdir -p /backend_node
WORKDIR /backend_node

COPY backend_node/package*.json ./

# Bundle app source
COPY backend_node/ .

RUN npm install

# Exports
EXPOSE 3000
CMD [ "nodemon" ]
