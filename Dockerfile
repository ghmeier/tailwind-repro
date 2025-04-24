FROM node:22.15.0-alpine3.20 AS node-build

COPY package.json package-lock.json /
RUN npm ci 
RUN npx --yes @tailwindcss/cli -v
