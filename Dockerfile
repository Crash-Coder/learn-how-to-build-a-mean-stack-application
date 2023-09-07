# Use an official Node.js runtime as a base image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

#Expose the port your application will run on
EXPOSE 3000

# Command used to start the application
CMD ["npm", "start"]