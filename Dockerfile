FROM node:22-alpine

WORKDIR /app

ENV NODE_ENV=production

COPY app/package*.json ./
RUN npm ci --omit=dev

COPY app/ .

EXPOSE 3000

USER node

CMD ["node", "server.js"]
