# Node image.
FROM node:12

# Server Directory
WORKDIR /server

# Install app dependencies
COPY package*.json ./

RUN npm install

#Bundle app source
COPY . .

CMD ["npm","start"]