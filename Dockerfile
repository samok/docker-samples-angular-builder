FROM node:8

EXPOSE 8888

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install -g @angular/cli
RUN ng new app_test
RUN cd app_test
RUN ng serve --open
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 8090
CMD [ "npm", "start" ]