FROM node:12-alpine

WORKDIR /app/

COPY /mocks ./mocks
COPY /src ./src
COPY package.json ./
RUN npm install

EXPOSE 8080

CMD ["npm", "run", "start"]
