FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .
RUN npm install -g pm2
EXPOSE 443
CMD ["pm2-runtime", "start", "server-frontend.js"]