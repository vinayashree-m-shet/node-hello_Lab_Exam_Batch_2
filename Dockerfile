FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --production --silent

# Just copy everything from the root (excluding what's in .dockerignore)
COPY . .

EXPOSE 3004

CMD ["node", "index.js"]

