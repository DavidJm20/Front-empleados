# Use an official Node.js runtime as the base image
FROM node:14.20.1

# Set the working directory
WORKDIR  /src/app

# Copy the package.json file to install dependencies
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's source code
COPY . /src/app

# Build the Angular app
RUN npm run build

# Expose port 4200 to run the app
EXPOSE 4200

# Set the command to start the app
CMD [ "npm", "start" ]

