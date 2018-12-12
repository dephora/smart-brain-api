FROM node:latest

# WORKDIR /usr/src/smart-brain-api

# COPY ./ ./

# RUN npm install

# Create app directory
RUN mkdir -p /usr/src/smart-brain-api
WORKDIR /usr/src/smart-brain-api

# Install app dependencies
COPY package.json /usr/src/smart-brain-api
RUN npm install

# Bundle app source
COPY . /usr/src/smart-brain-api

CMD ["/bin/bash"]