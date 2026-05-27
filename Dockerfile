# Node.js base image
FROM node:18-alpine

# Directory in the container
WORKDIR /usr/src/assignment_1_2026

# Copy package files
COPY package*.json ./

# Application dependencies
RUN npm install

# Copy app source code
COPY . .

# Set the Port
EXPOSE 3000

# Start app
CMD ["npm", "start"]