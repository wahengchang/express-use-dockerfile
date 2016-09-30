FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Set up Env variable
ENV BOT_TOKEN mykey
ENV PARSE_URL http://localhost:1337/parse
ENV PARSE_ID APPID
ENV PARSE_MASTERKEY MASTERKEY

EXPOSE 3000
CMD [ "npm", "start" ]
