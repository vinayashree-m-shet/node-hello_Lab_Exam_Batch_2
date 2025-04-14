# Use the latest Node.js LTS version as the base image
FROM node:18-alpine
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy package.json and package-lock.json to leverage Docker caching
COPY src/package*.json ./
 
# Install dependencies
RUN npm install --production --slient
 
# Copy the entire project into the container
COPY src/. .
 
# Expose the port the app runs on
EXPOSE 3000
 
# Command to run the application
CMD ["node", "server.mjs"]
