FROM node:10
WORKDIR /user/src/app

# copy package.json to the WORKDIR
COPY package*.json ./

# install dependencies in the WORKDIR
RUN npm install

# copy project files into the container
COPY . .

EXPOSE 3000
CMD ["npm", "start"]