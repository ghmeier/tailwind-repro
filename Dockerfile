FROM node:22.15.0-alpine3.20

COPY package.json package-lock.json /
RUN npm ci 
RUN npx @tailwindcss/cli -v
