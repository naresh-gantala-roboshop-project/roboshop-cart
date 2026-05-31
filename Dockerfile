FROM node:20-alpine
WORKDIR /app
COPY package*.json server.js ./
RUN npm install --production
COPY . .
EXPOSE 8003
CMD ["node", "server.js"]
