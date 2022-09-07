FROM node:15
WORKDIR /usr/src/app
COPY package*.json .
RUN npm ci
COPY . .
ENV PORT 3000
EXPOSE $PORT
CMD ["npm", "run", "dev"]