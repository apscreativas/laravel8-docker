FROM node:16.13.2

RUN npm install -g @vue/cli

WORKDIR /var/www/html

EXPOSE 8080