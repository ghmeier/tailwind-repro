FROM node:22.15.0-alpine3.20

COPY package.json package-lock.json input.css /
RUN npm ci 

RUN npx @tailwindcss/cli -i input.css -o out.css
