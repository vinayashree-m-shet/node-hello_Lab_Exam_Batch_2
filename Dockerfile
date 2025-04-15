# Use a lightweight Node.js base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files (for installing dependencies first)
COPY package*.json ./

# Install only production dependencies
RUN npm install --production --silent

# Copy app source code into the container
COPY src/ .

# Expose the port your app uses (change this if needed)
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]

